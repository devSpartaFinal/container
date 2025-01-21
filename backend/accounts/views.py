import jwt
from .models import User
from .serializers import *
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from django.contrib.auth import login, authenticate
from django.shortcuts import render, get_object_or_404
from django.contrib.auth.models import update_last_login
from coding_helper.settings import HOSTUSER_EMAIL, SECRET_KEY
from rest_framework_simplejwt.serializers import (
    TokenObtainPairSerializer,
    TokenRefreshSerializer,
)
from rest_framework.permissions import AllowAny, IsAuthenticated

# 이메일 인증 관련
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.utils.encoding import force_bytes
from django.contrib.auth.tokens import default_token_generator
from django.core.mail import send_mail
from django.http import HttpResponseRedirect


# 캐시 초기화
from chatbot.models import ChatHistory, Documents
from quizbot.models import Reference
from django.core.cache import cache

# 소셜 로그인
import requests
from urllib.parse import urlencode
from django.shortcuts import redirect
from coding_helper.settings import (
    GOOGLE_OAUTH_CLIENT_ID,
    GOOGLE_OAUTH_CALLBACK_URL,
    GOOGLE_OAUTH_CLIENT_SECRET,
    GITHUB_CLIENT_ID,
    GITHUB_REDIRECT_URI,
    GITHUB_CLIENT_SECRET,
)


class SignInOutAPIView(APIView):

    def get_permissions(self):
        """POST 요청은 인증 없이 허용"""
        if self.request.method == "POST":
            return [AllowAny()]
        return [IsAuthenticated()]

    def post(self, request):

        print(request.data)
        serializer = UserSerializer(data=request.data)
        value = request.data["password"]

        if serializer.is_valid():
            user = serializer.save()
            user.is_active = False  # 이메일 인증 전까지 비활성화 상태로 저장
            user.save()

            # 이메일 인증 링크 생성
            uid = urlsafe_base64_encode(force_bytes(user.pk))
            token = default_token_generator.make_token(user)
            verification_link = f"http://api.letsreadriddle.com/verify-email/{uid}/{token}/"

            # 이메일 전송
            send_mail(
                subject="Email Verification",
                message=f"Hi {user.username},\n\nClick the link below to verify your email:\n\n{verification_link}",
                from_email=HOSTUSER_EMAIL,  # 발신자 이메일
                recipient_list=[user.email],
                fail_silently=False,
            )

            return Response(
                {
                    "message": "User registered successfully. Please verify your email to activate the account."
                },
                status=status.HTTP_201_CREATED,
            )

        print(serializer.errors)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request):
        # 요청으로부터 아이디와 비밀번호를 받음
        input_username = request.data.get("username")
        input_password = request.data.get("password")

        # 입력값 검증
        if not input_username or not input_password:
            return Response(
                {"detail": "Username and password are required."},
                status=status.HTTP_400_BAD_REQUEST,
            )

        # 삭제 대상 유저 가져오기
        user = get_object_or_404(User, username=input_username)

        # 현재 로그인한 사용자와 삭제 대상 사용자 정보 비교
        if request.user != user:
            return Response(
                {"detail": "You can only delete your own account."},
                status=status.HTTP_403_FORBIDDEN,
            )

        # 아이디와 비밀번호 인증
        authenticated_user = authenticate(
            username=input_username, password=input_password
        )
        if authenticated_user is None or authenticated_user != user:
            return Response(
                {"detail": "Invalid username or password."},
                status=status.HTTP_401_UNAUTHORIZED,
            )

        # 인증 완료 시 회원탈퇴 처리
        user.delete()
        return Response(
            {"detail": "Account deleted successfully."},
            status=status.HTTP_204_NO_CONTENT,
        )


class EmailVerificationView(APIView):
    permission_classes = [AllowAny]

    def get(self, request, uidb64, token):
        try:
            # 유저 ID 복호화
            uid = urlsafe_base64_decode(uidb64).decode()
            user = get_object_or_404(User, pk=uid)

            # 토큰 검증
            if default_token_generator.check_token(user, token):
                user.is_active = True  # 계정 활성화
                user.save()

                # JWT 토큰 발급
                from rest_framework_simplejwt.tokens import RefreshToken

                refresh = RefreshToken.for_user(user)
                access_token = str(refresh.access_token)
                refresh_token = str(refresh)

                # 응답에 토큰 포함
                res = Response(
                    {
                        "message": "Email verified successfully.",
                        "token": {
                            "access": access_token,
                            "refresh": refresh_token,
                        },
                    },
                    status=status.HTTP_200_OK,
                )

                res = HttpResponseRedirect("https://api.letsreadriddle.com")

                # JWT 토큰을 쿠키에 저장
                res.set_cookie("username", user.username, httponly=False)
                res.set_cookie("access", access_token, httponly=False)
                res.set_cookie("refresh", refresh_token, httponly=True)

                # refresh_token을 데이터베이스에 저장
                user.refresh_token = refresh_token
                user.save()

                # 사용자 캐시 초기화
                chats = ChatHistory.objects.filter(user=user)
                if chats:
                    chathistory_key = f"{user.id}:chathistory_keys"
                    keys = []
                    for chat in chats:
                        cache_key = f"{user.id}:{chat.id}:chathistory"
                        cache.set(cache_key, chat, timeout=60 * 60)
                        keys.append(chat.id)
                    cache.set(chathistory_key, keys, timeout=60 * 60)
                    print("대화내역 캐시 등록")

                # 레퍼런스 초기화
                documents = cache.get("documents")
                if not documents:
                    documents = Documents.objects.all()
                    cache.set("documents", documents, timeout=60 * 60 * 24)
                    print("공식문서 캐시 등록")
                reference = cache.get("reference")
                if not reference:
                    reference = Reference.objects.all()
                    cache.set("reference", reference, timeout=60 * 60 * 24)
                    print("레퍼런스 캐시 등록")

                return res
            else:
                return Response(
                    {"message": "Invalid or expired token."},
                    status=status.HTTP_400_BAD_REQUEST,
                )
        except Exception as e:
            return Response(
                {"message": "Invalid request."}, status=status.HTTP_400_BAD_REQUEST
            )


# access token 정보 필요
class ProfileAPIView(APIView):

    def get(self, request, username):
        user = get_object_or_404(User, username=username)

        serializer = UserSerializer(user)
        return Response(serializer.data)

    def put(self, request, username):
        user = get_object_or_404(User, username=username)

        if request.user != user:
            return Response(
                {"detail": "You can only edit your own profile."},
                status=status.HTTP_403_FORBIDDEN,
            )

        serializer = ProfileEditSerializer(user, data=request.data, partial=True)
        if serializer.is_valid(raise_exception=True):
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class AuthAPIView(APIView):

    def get_permissions(self):
        """POST 요청은 인증 없이 허용"""
        if self.request.method == "POST":
            return [AllowAny()]
        return [IsAuthenticated()]

    # 로그인
    def post(self, request):
        # 유저 인증
        user = User.objects.get(username=request.data.get("username"))
        if user.social_login == False:
            user = authenticate(
                username=request.data.get("username"),
                password=request.data.get("password"),
            )
        # 이미 회원가입 된 유저일 때
        if user is not None:
            if not user.is_active:
                return Response(
                    {"message": "User is inactive"}, status=status.HTTP_400_BAD_REQUEST
                )

            login(request, user)
            update_last_login(None, user)
            serializer = UserSerializer(user)
            # jwt 토큰 접근
            token = TokenObtainPairSerializer.get_token(user)
            refresh_token = str(token)
            access_token = str(token.access_token)
            res = Response(
                {
                    "user": serializer.data,
                    "message": "login success",
                    "token": {
                        "access": access_token,
                        "refresh": refresh_token,
                    },
                },
                status=status.HTTP_200_OK,
            )
            # jwt 토큰 => 쿠키에 저장
            res.set_cookie("username", user.username, httponly=False)
            res.set_cookie("access", access_token, httponly=False)

            user.refresh_token = refresh_token
            user.social_login = False
            user.save()
            # 사용자 캐시 초기화
            chats = ChatHistory.objects.filter(user=request.user)
            if chats:
                chathistory_key = f"{user.id}:chathistory_keys"
                keys = []
                for chat in chats:
                    cache_key = f"{user.id}:{chat.id}:chathistory"
                    cache.set(cache_key, chat, timeout=60 * 60)
                    keys.append(chat.id)
                cache.set(chathistory_key, keys, timeout=60 * 60)
                print("대화내역 캐시 등록")

            # 레퍼런스 초기화
            documents = cache.get("documents")
            if not documents:
                documents = Documents.objects.all()
                cache.set("documents", documents, timeout=60 * 60 * 24)
                print("공식문서 캐시 등록")
            reference = cache.get("reference")
            if not reference:
                reference = Reference.objects.all()
                cache.set("reference", reference, timeout=60 * 60 * 24)
                print("레퍼런스 캐시 등록")

            return res
        else:
            return Response(status=status.HTTP_400_BAD_REQUEST)

    # 로그아웃
    def delete(self, request):
        username = request.data.get("username")
        user = get_object_or_404(User, username=username)

        # 쿠키에 저장된 토큰 삭제 => 로그아웃 처리
        response = Response(
            {"message": f"{username} Logout success"}, status=status.HTTP_202_ACCEPTED
        )
        response.delete_cookie("access")
        # response.delete_cookie("refresh")
        user.refresh_token = ""
        user.social_login = False
        user.save()
        return response


class PasswordAPIView(APIView):

    def put(self, request):
        user = get_object_or_404(User, username=request.data["username"])
        serializer = UserSerializer(user)

        # 입력받은 비밀번호는 해싱된 값이 아니므로, check_password() 메서드로 검증
        if not user.check_password(request.data["present_password"]):
            return Response(
                {"detail": "현재 비밀번호가 일치하지 않습니다."},
                status=status.HTTP_400_BAD_REQUEST,
            )

        # 새 비밀번호와 확인 비밀번호가 일치하는지 확인
        if request.data["new_password"] != request.data["confirm_password"]:
            return Response(
                {"detail": "새 비밀번호가 일치하지 않습니다."},
                status=status.HTTP_400_BAD_REQUEST,
            )

        # 비밀번호 유효성 검사
        value = request.data["new_password"]
        user.set_password(value)
        user.save()
        return Response(
            {"detail": "비밀번호가 성공적으로 변경되었습니다."},
            status=status.HTTP_200_OK,
        )


class TokenRefresh(APIView):
    permission_classes = [AllowAny]

    def post(self, request):
        try:
            access = request.data["access"]
            payload = jwt.decode(access, SECRET_KEY, algorithms=["HS256"])
            pk = payload.get("user_id")
            user = get_object_or_404(User, pk=pk)
            refresh_token = user.refresh_token
            data = {"refresh": refresh_token}
            serializer = TokenRefreshSerializer(data=data)

            # 유효성 검사 및 응답 직렬화
            if serializer.is_valid(raise_exception=True):
                access = serializer.data.get("access", None)
                serializer = UserSerializer(instance=user)

                # 새로운 access와 refresh 토큰으로 응답 생성
                res = Response({"access": access}, status=status.HTTP_200_OK)
                res.set_cookie("username", user.username, httponly=False)
                res.set_cookie("access", access, httponly=False)
                # res.set_cookie("refresh", refresh)
                return res

        except jwt.exceptions.InvalidTokenError as e:
            print("JWT decoding error:", str(e))
            return Response({"detail": str(e)}, status=status.HTTP_401_UNAUTHORIZED)
        except KeyError:
            return Response(
                {"detail": "토큰을 확인할 수 없습니다."},
                status=status.HTTP_400_BAD_REQUEST,
            )
        except Exception as e:
            return Response(
                {"detail": "오류가 발생하였습니다. : " + str(e)},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR,
            )


class GoogleLogin(APIView):
    permission_classes = [AllowAny]

    def get(self, request):
        google_oauth_url = "https://accounts.google.com/o/oauth2/v2/auth"
        params = {
            "response_type": "code",
            "client_id": GOOGLE_OAUTH_CLIENT_ID,
            "redirect_uri": GOOGLE_OAUTH_CALLBACK_URL,
            "scope": "https://www.googleapis.com/auth/userinfo.email",
            "state": "state_parameter",
        }

        auth_url = f"{google_oauth_url}?{urlencode(params)}"
        return Response({"auth_url": auth_url})


class GoogleLoginCallback(APIView):
    permission_classes = [AllowAny]

    def get(self, request, *args, **kwargs):
        code = request.GET.get("code")

        # 인증 코드가 없으면 400 오류 반환
        if code is None:
            return Response({"error": "Authorization code not provided"}, status=400)

        # Google OAuth2 토큰 엔드포인트
        token_endpoint_url = "https://oauth2.googleapis.com/token"

        # POST 요청을 Google의 토큰 엔드포인트로 보냄
        response = requests.post(
            url=token_endpoint_url,
            params={
                "client_id": GOOGLE_OAUTH_CLIENT_ID,
                "client_secret": GOOGLE_OAUTH_CLIENT_SECRET,
                "code": code,
                "grant_type": "authorization_code",
                "redirect_uri": GOOGLE_OAUTH_CALLBACK_URL,
            },
        )

        # 응답이 JSON 형식인지 확인하고 처리
        try:
            response_dict = response.json()
            access_token = response_dict.get("access_token")
            url = "https://www.googleapis.com/oauth2/v3/userinfo"
            headers = {"Authorization": f"Bearer {access_token}"}
            response = requests.get(url, headers=headers)
            response_data = response.json()

            email = response_data.get("email")

            id = email.split("@")[0]
            username = f"05_{id}"
            try:
                user = User.objects.get(username=username)
                print("가입된 사용자")
            except User.DoesNotExist:
                print("미가입된 사용자")

                user = User.objects.create(
                    username=username,
                    email=f"{id}@social.com",
                    first_name="Anonymous",
                    nickname=id,
                    is_active=True,
                    is_social=True,
                )
                user.save()
                # 사용자 캐시 초기화
            chats = ChatHistory.objects.filter(user=user)
            if chats:
                chathistory_key = f"{user.id}:chathistory_keys"
                keys = []
                for chat in chats:
                    cache_key = f"{user.id}:{chat.id}:chathistory"
                    cache.set(cache_key, chat, timeout=60 * 60)
                    keys.append(chat.id)
                cache.set(chathistory_key, keys, timeout=60 * 60)
                print("대화내역 캐시 등록")

            # 레퍼런스 초기화
            documents = cache.get("documents")
            if not documents:
                documents = Documents.objects.all()
                cache.set("documents", documents, timeout=60 * 60 * 24)
                print("공식문서 캐시 등록")
            reference = cache.get("reference")
            if not reference:
                reference = Reference.objects.all()
                cache.set("reference", reference, timeout=60 * 60 * 24)
                print("레퍼런스 캐시 등록")

            login(request, user)
            update_last_login(None, user)
            token = TokenObtainPairSerializer.get_token(user)
            refresh_token = str(token)
            access = str(token.access_token)
            res = Response(
                {
                    "access": access,
                    "username": username,
                },
                status=status.HTTP_200_OK,
            )

            # jwt 토큰 => 쿠키에 저장
            user.refresh_token = refresh_token
            user.save()
            print(res.data)
            return res

        except requests.exceptions.RequestException as e:
            return Response({"error": f"Request error: {str(e)}"}, status=400)

        except ValueError:
            return Response({"error": "Invalid response from Google"}, status=400)


class GithubLogin(APIView):
    permission_classes = [AllowAny]

    def get(self, request):
        github_oauth_url = "https://github.com/login/oauth/authorize"
        params = {
            "client_id": GITHUB_CLIENT_ID,
            "redirect_uri": GITHUB_REDIRECT_URI,
            "scope": "read:user",
            "user:email" "state": "state_parameter",  # CSRF 방지용 state 값
        }

        # GitHub로 리디렉션
        auth_url = f"{github_oauth_url}?{urlencode(params)}"
        return redirect(auth_url)


class GitHubLoginCallback(APIView):
    permission_classes = [AllowAny]

    def get(self, request, *args, **kwargs):
        # GitHub에서 받은 인증 코드
        code = request.GET.get("code")

        # 인증 코드가 없으면 에러 반환
        if not code:
            return Response({"error": "Authorization code not provided"}, status=400)

        # GitHub 토큰 엔드포인트
        token_endpoint_url = "https://github.com/login/oauth/access_token"

        # POST 요청으로 액세스 토큰 요청
        response = requests.post(
            url=token_endpoint_url,
            headers={"Accept": "application/json"},
            data={
                "client_id": GITHUB_CLIENT_ID,
                "client_secret": GITHUB_CLIENT_SECRET,
                "code": code,
                "redirect_uri": GITHUB_REDIRECT_URI,
            },
        )

        # 응답을 JSON 형식으로 파싱
        try:
            token_data = response.json()
            access_token = token_data.get("access_token")

            if not access_token:
                return Response({"error": "Access token not received"}, status=400)

            # GitHub 사용자 정보 가져오기
            user_info_url = "https://api.github.com/user"
            headers = {"Authorization": f"Bearer {access_token}"}
            response = requests.get(user_info_url, headers=headers)
            response_data = response.json()
            email = response_data["email"]
            address = email.split("@")
            id = address[0] + address[1][0] + address[1][1]
            username = f"07_{id}"
            try:
                user = User.objects.get(username=username)
                print("가입된 사용자")
            except User.DoesNotExist:
                print("미가입된 사용자")

                user = User.objects.create(
                    username=username,
                    email=f"{id}@social.com",
                    first_name="Anonymous",
                    nickname=id,
                    is_active=True,
                    is_social=True,
                )
                user.save()

            user.social_login = True
            user.save()
            username = user.username

            return Response({"username": username})

        except requests.exceptions.RequestException as e:
            return Response({"error": f"Request error: {str(e)}"}, status=400)

        except ValueError:
            return Response({"error": "Invalid response from Google"}, status=400)

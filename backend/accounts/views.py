from django.http import HttpResponseRedirect
import jwt
from rest_framework.views import APIView
from .models import User
from coding_helper.settings import HOSTUSER_EMAIL, SECRET_KEY
from .serializers import *
from rest_framework_simplejwt.serializers import (
    TokenObtainPairSerializer,
    TokenRefreshSerializer,
)
from rest_framework import status
from rest_framework.response import Response
from rest_framework.permissions import AllowAny, IsAuthenticated
from django.contrib.auth import login, authenticate
from django.contrib.auth.models import update_last_login
from django.shortcuts import render, get_object_or_404

# 이메일 인증 관련
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.utils.encoding import force_bytes
from django.contrib.auth.tokens import default_token_generator
from django.core.mail import send_mail
from django.http import HttpResponseRedirect


# Create your views here.
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

        # 비밀번호 유효성 검사
        # if len(value) < 8:
        #     raise serializers.ValidationError("비밀번호는 최소 8자 이상이어야 합니다.")
        # if not re.search(r"[A-Z]", value):  # 대문자 포함
        #     raise serializers.ValidationError(
        #         "비밀번호는 최소한 하나의 대문자를 포함해야 합니다."
        #     )
        # if not re.search(r"[a-z]", value):  # 소문자 포함
        #     raise serializers.ValidationError(
        #         "비밀번호는 최소한 하나의 소문자를 포함해야 합니다."
        #     )
        # if not re.search(r"[0-9]", value):  # 숫자 포함
        #     raise serializers.ValidationError(
        #         "비밀번호는 최소한 하나의 숫자를 포함해야 합니다."
        #     )
        # if not re.search(r"[!@#$%^&*(),.?\":{}|<>]", value):  # 특수문자 포함
        #     raise serializers.ValidationError(
        #         "비밀번호는 최소한 하나의 특수문자를 포함해야 합니다."
        #     )

        if serializer.is_valid():
            user = serializer.save()
            user.is_active = False  # 이메일 인증 전까지 비활성화 상태로 저장
            user.save()

            # 이메일 인증 링크 생성
            uid = urlsafe_base64_encode(force_bytes(user.pk))
            token = default_token_generator.make_token(user)
            verification_link = f"https://44.222.253.186:80/verify-email/{uid}/{token}/"

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

                res = HttpResponseRedirect("https:///www.letsreadriddle.com")

                # JWT 토큰을 쿠키에 저장
                res.set_cookie("username", user.username, httponly=False, domain="www.letsreadriddle.com")
                res.set_cookie("access", access_token, httponly=False, domain="www.letsreadriddle.com")
                res.set_cookie("refresh", refresh_token, httponly=True, domain="www.letsreadriddle.com")


                # refresh_token을 데이터베이스에 저장
                user.refresh_token = refresh_token
                user.save()

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
        user = authenticate(
            username=request.data.get("username"), password=request.data.get("password")
        )
        # 이미 회원가입 된 유저일 때
        if user is not None:
            if not user.is_active:
                return Response({"message": "User is inactive"}, status=status.HTTP_400_BAD_REQUEST)
            
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
                    "token": {"access": access_token,"refresh": refresh_token,},
                },
                status=status.HTTP_200_OK,
            )
            # jwt 토큰 => 쿠키에 저장
            res.set_cookie("username", user.username, httponly=False)
            res.set_cookie("access", access_token, httponly=False)
            
            user.refresh_token = refresh_token
            user.save()
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
        # if len(value) < 8:
        #     raise serializers.ValidationError("비밀번호는 최소 8자 이상이어야 합니다.")
        # if not re.search(r"[A-Z]", value):  # 대문자 포함
        #     raise serializers.ValidationError(
        #         "비밀번호는 최소한 하나의 대문자를 포함해야 합니다."
        #     )
        # if not re.search(r"[a-z]", value):  # 소문자 포함
        #     raise serializers.ValidationError(
        #         "비밀번호는 최소한 하나의 소문자를 포함해야 합니다."
        #     )
        # if not re.search(r"[0-9]", value):  # 숫자 포함
        #     raise serializers.ValidationError(
        #         "비밀번호는 최소한 하나의 숫자를 포함해야 합니다."
        #     )
        # if not re.search(r"[!@#$%^&*(),.?\":{}|<>]", value):  # 특수문자 포함
        #     raise serializers.ValidationError(
        #         "비밀번호는 최소한 하나의 특수문자를 포함해야 합니다."
        #     )

        # set_password() 메서드로 비밀번호 해싱
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

            print(">>>>>>>>> REFRESH 토큰 요청옴!!")
            # access token을 decode 해서 유저 id 추출 => 유저 식별
            print(request.data)
            access = request.data["access"]
            payload = jwt.decode(access, SECRET_KEY, algorithms=["HS256"])
            pk = payload.get("user_id")
            print(payload)
            print(pk)
            user = get_object_or_404(User, pk=pk)
            print(user)
            refresh_token = user.refresh_token
            data = {"refresh": refresh_token}
            serializer = TokenRefreshSerializer(data=data)

            # 유효성 검사 및 응답 직렬화
            if serializer.is_valid(raise_exception=True):
                access = serializer.data.get("access", None)
                serializer = UserSerializer(instance=user)

                # 새로운 access와 refresh 토큰으로 응답 생성
                res = Response(
                    {"access": access}, status=status.HTTP_200_OK
                )
                res.set_cookie("username", user.username, httponly=False)
                res.set_cookie("access", access, httponly=False)
                # res.set_cookie("refresh", refresh)
                return res

        except jwt.exceptions.InvalidTokenError as e:
            print("JWT decoding error:", str(e))
            return Response({"detail": str(e)}, status=status.HTTP_401_UNAUTHORIZED)
        except KeyError:
            return Response({"detail": "토큰을 확인할 수 없습니다."}, status=status.HTTP_400_BAD_REQUEST)
        except Exception as e:
            return Response({"detail": "오류가 발생하였습니다. : " + str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

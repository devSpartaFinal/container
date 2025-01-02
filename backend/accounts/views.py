import jwt
from rest_framework.views import APIView
from .models import User
from coding_helper.settings import SECRET_KEY
from .serializers import *
from rest_framework_simplejwt.serializers import (
    TokenObtainPairSerializer,
    TokenRefreshSerializer,
)
from rest_framework import status
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.contrib.auth import authenticate
from django.shortcuts import render, get_object_or_404

# Create your views here.
class SignInOutAPIView(APIView):
    def post(self, request):
        serializer = UserSerializer(data=request.data)
        # 비밀번호 유효성 검사
        value = request.data["password"]
        if len(value) < 8:
            raise serializers.ValidationError("비밀번호는 최소 8자 이상이어야 합니다.")
        if not re.search(r"[A-Z]", value):  # 대문자 포함
            raise serializers.ValidationError("비밀번호는 최소한 하나의 대문자를 포함해야 합니다.")
        if not re.search(r"[a-z]", value):  # 소문자 포함
            raise serializers.ValidationError("비밀번호는 최소한 하나의 소문자를 포함해야 합니다.")
        if not re.search(r"[0-9]", value):  # 숫자 포함
            raise serializers.ValidationError("비밀번호는 최소한 하나의 숫자를 포함해야 합니다.")
        if not re.search(r"[!@#$%^&*(),.?\":{}|<>]", value):  # 특수문자 포함
            raise serializers.ValidationError("비밀번호는 최소한 하나의 특수문자를 포함해야 합니다.")
        
        if serializer.is_valid():
            user = serializer.save()

            # jwt 토큰 접근
            token = CustomTokenObtainPairSerializer.get_token(user)
            refresh_token = str(token)
            access_token = str(token.access_token)
            res = Response(
                {
                    "user": serializer.data,
                    "message": "register successs",
                    "token": {
                        "access": access_token,
                        "refresh": refresh_token,
                    },
                },
                status=status.HTTP_200_OK,
            )

            # jwt 토큰 => 쿠키에 저장
            res.set_cookie("access", access_token, httponly=True)
            res.set_cookie("refresh", refresh_token, httponly=True)

            return res
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
        authenticated_user = authenticate(username=input_username, password=input_password)
        if authenticated_user is None or authenticated_user != user:
            return Response(
                {"detail": "Invalid username or password."},
                status=status.HTTP_401_UNAUTHORIZED,
            )

        # 인증 완료 시 회원탈퇴 처리
        user.delete()
        return Response({"detail": "Account deleted successfully."}, status=status.HTTP_204_NO_CONTENT)

# access token 정보 필요
class ProfileAPIView(APIView):
    permission_classes = [IsAuthenticated]

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
    # 유저 정보 확인
    def get(self, request):
        try:
            # access token을 decode 해서 유저 id 추출 => 유저 식별
            access = request.COOKIES["access"]
            payload = jwt.decode(access, SECRET_KEY, algorithms=["HS256"])
            pk = payload.get("user_id")
            user = get_object_or_404(User, pk=pk)
            serializer = UserSerializer(instance=user)
            return Response(serializer.data, status=status.HTTP_200_OK)

        except jwt.exceptions.ExpiredSignatureError:
            # 토큰 만료 시 토큰 갱신
            data = {"refresh": request.COOKIES.get("refresh", None)}
            serializer = TokenRefreshSerializer(data=data)
            if serializer.is_valid(raise_exception=True):
                access = serializer.data.get("access", None)
                refresh = serializer.data.get("refresh", None)
                payload = jwt.decode(access, SECRET_KEY, algorithms=["HS256"])
                pk = payload.get("user_id")
                user = get_object_or_404(User, pk=pk)
                serializer = UserSerializer(instance=user)
                res = Response(serializer.data, status=status.HTTP_200_OK)
                res.set_cookie("access", access)
                res.set_cookie("refresh", refresh)
                return res
            raise jwt.exceptions.InvalidTokenError

        except jwt.exceptions.InvalidTokenError:
            # 사용 불가능한 토큰일 때
            return Response(status=status.HTTP_400_BAD_REQUEST)

    # 로그인
    def post(self, request):
        # 유저 인증
        user = authenticate(
            username=request.data.get("username"), password=request.data.get("password")
        )
        # 이미 회원가입 된 유저일 때
        if user is not None:
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
            res.set_cookie("access", access_token, httponly=True)
            res.set_cookie("refresh", refresh_token, httponly=True)
            return res
        else:
            return Response(status=status.HTTP_400_BAD_REQUEST)

    # 로그아웃
    def delete(self, request):
        username=request.data.get("username")
        
        # 쿠키에 저장된 토큰 삭제 => 로그아웃 처리
        response = Response(
            {"message": f"{username} Logout success"}, status=status.HTTP_202_ACCEPTED
        )
        response.delete_cookie("access")
        response.delete_cookie("refresh")
        return response


class PasswordAPIView(APIView):
    permission_classes = [IsAuthenticated]

    def put(self, request):
        user = get_object_or_404(User, username=request.data["username"])
        serializer = UserSerializer(user)
        
        # 입력받은 비밀번호는 해싱된 값이 아니므로, check_password() 메서드로 검증
        if not user.check_password(request.data["present_password"]):
            return Response(
                {"detail": "현재 비밀번호가 일치하지 않습니다."}, 
                status=status.HTTP_400_BAD_REQUEST
            )
        
        # 새 비밀번호와 확인 비밀번호가 일치하는지 확인
        if request.data["new_password"] != request.data["confirm_password"]:
            return Response(
                {"detail": "새 비밀번호가 일치하지 않습니다."},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        # 비밀번호 유효성 검사
        value = request.data["new_password"]
        if len(value) < 8:
            raise serializers.ValidationError("비밀번호는 최소 8자 이상이어야 합니다.")
        if not re.search(r"[A-Z]", value):  # 대문자 포함
            raise serializers.ValidationError("비밀번호는 최소한 하나의 대문자를 포함해야 합니다.")
        if not re.search(r"[a-z]", value):  # 소문자 포함
            raise serializers.ValidationError("비밀번호는 최소한 하나의 소문자를 포함해야 합니다.")
        if not re.search(r"[0-9]", value):  # 숫자 포함
            raise serializers.ValidationError("비밀번호는 최소한 하나의 숫자를 포함해야 합니다.")
        if not re.search(r"[!@#$%^&*(),.?\":{}|<>]", value):  # 특수문자 포함
            raise serializers.ValidationError("비밀번호는 최소한 하나의 특수문자를 포함해야 합니다.")
        
        # set_password() 메서드로 비밀번호 해싱
        user.set_password(value)
        user.save()
        return Response({"detail": "비밀번호가 성공적으로 변경되었습니다."}, status=status.HTTP_200_OK)
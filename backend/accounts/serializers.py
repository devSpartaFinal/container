from rest_framework import serializers
from .models import User
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
import re
from datetime import date


class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = [
            "username",
            "email",
            "first_name",
            "last_name",
            "nickname",
            "birth_date",
            "gender",
            "intro",
            "RiddleScore",
            "is_superuser",
            "is_active",
            "is_social",
            "social_login",
            "is_staff",
            "created_at",
            "updated_at",
            "refresh_token",
        ]

    def validate_birth_date(self, value):
        today = date.today()
        min_date = today.replace(year=today.year - 150)
        max_date = today.replace(year=today.year - 7)

        if value < min_date or value > max_date:
            raise serializers.ValidationError("유효하지 않은 날짜입니다.")

        return value

    def validate_new_password(self, value):
        # 비밀번호 유효성 검사
        if len(value) < 8:
            raise serializers.ValidationError("비밀번호는 최소 8자 이상이어야 합니다.")
        if not re.search(r"[A-Z]", value):  # 대문자 포함
            raise serializers.ValidationError(
                "비밀번호는 최소한 하나의 대문자를 포함해야 합니다."
            )
        if not re.search(r"[a-z]", value):  # 소문자 포함
            raise serializers.ValidationError(
                "비밀번호는 최소한 하나의 소문자를 포함해야 합니다."
            )
        if not re.search(r"[0-9]", value):  # 숫자 포함
            raise serializers.ValidationError(
                "비밀번호는 최소한 하나의 숫자를 포함해야 합니다."
            )
        if not re.search(r"[!@#$%^&*(),.?\":{}|<>]", value):  # 특수문자 포함
            raise serializers.ValidationError(
                "비밀번호는 최소한 하나의 특수문자를 포함해야 합니다."
            )

        # 비밀번호가 유효하다면 반환
        return value

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        user.save()
        return user


class ProfileEditSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = [
            "email",
            "first_name",
            "last_name",
            "nickname",
            "birth_date",
            "gender",
            "intro",
        ]

    def validate_birth_date(self, value):
        today = date.today()
        min_date = today.replace(year=today.year - 150)
        max_date = today.replace(year=today.year - 7)

        if value < min_date or value > max_date:
            raise serializers.ValidationError("유효하지 않은 날짜입니다.")

        return value

    def update(self, instance, validated_data):
        instance.email = validated_data.get("email", instance.email)
        instance.first_name = validated_data.get("first_name", instance.first_name)
        instance.last_name = validated_data.get("last_name", instance.last_name)
        instance.nickname = validated_data.get(
            "nickname", instance.nickname
        )  # 중복체크
        instance.birth_date = validated_data.get(
            "birth_date", instance.birth_date
        )  # 생일 검증
        instance.gender = validated_data.get("gender", instance.gender)
        instance.intro = validated_data.get("intro", instance.intro)
        instance.save()
        return instance


class CustomTokenObtainPairSerializer(TokenObtainPairSerializer):
    @classmethod
    def get_token(cls, user):
        token = super().get_token(user)
        return token

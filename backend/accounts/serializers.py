from rest_framework import serializers
from .models import User
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
import re

class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = "__all__"

    def validate_email(self, value):
        if User.objects.filter(email=value).exists():
            raise serializers.ValidationError("이미 사용중인 이메일입니다.")
        return value
    
    def validate_new_password(self, value):
        # 비밀번호 유효성 검사
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

        # 비밀번호가 유효하다면 반환
        return value

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        user.save()
        return user


class ProfileEditSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ["email", "first_name", "last_name", "nickname", "birth_date", "gender", "intro"]
        
    def update(self, instance, validated_data):
        instance.email = validated_data.get("email", instance.email)
        instance.first_name = validated_data.get("first_name", instance.first_name)
        instance.last_name = validated_data.get("last_name", instance.last_name)
        instance.nickname = validated_data.get("nickname", instance.nickname)
        instance.birth_date = validated_data.get("birth_date", instance.birth_date)
        instance.gender = validated_data.get("gender", instance.gender)
        instance.intro = validated_data.get("intro", instance.intro)
        instance.save()
        return instance
        
        
class CustomTokenObtainPairSerializer(TokenObtainPairSerializer):
    @classmethod
    def get_token(cls, user):
        token = super().get_token(user)
        return token
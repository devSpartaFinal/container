from django.db import models
from django.contrib.auth.models import (
    AbstractBaseUser,
    BaseUserManager,
    PermissionsMixin,
)


class UserManager(BaseUserManager):
    def create_user(self, username, password, **kwargs):
        user = self.model(username=username, password=password, **kwargs)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, username=None, password=None, **extra_fields):
        superuser = self.create_user(
            username=username, password=password, **extra_fields
        )

        superuser.is_staff = True
        superuser.is_superuser = True
        superuser.is_active = True

        superuser.save(using=self._db)
        return superuser


class User(AbstractBaseUser, PermissionsMixin):

    username = models.CharField(
        max_length=150,
        unique=True,
        null=False,
        blank=False,
        default="Anonymous",
        error_messages={
            "unique": "이미 사용중인 ID 입니다.",
        },
    )
    email = models.EmailField(
        max_length=254,
        unique=True,
        null=False,
        blank=False,
        default="test@gmail.com",
        error_messages={
            "unique": "이미 사용중인 이메일입니다.",
        },
    )
    first_name = models.CharField(
        max_length=50, null=False, blank=False, default="first"
    )
    last_name = models.CharField(max_length=50, null=False, blank=False, default="last")
    nickname = models.CharField(
        max_length=30,
        unique=True,
        null=False,
        blank=False,
        default="nick",
        error_messages={
            "unique": "이미 사용중인 닉네임 입니다.",
        },
    )
    birth_date = models.DateField(null=False, blank=False, default="2000-01-01")

    # 선택 입력
    gender = models.CharField(
        max_length=10,
        choices=[("M", "Male"), ("F", "Female"), ("O", "Other")],
        blank=True,
        null=True,
    )
    intro = models.TextField(blank=True, null=True)

    # 자동 입력
    is_superuser = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    is_social = models.BooleanField(default=False)
    is_staff = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    # refresh 토큰
    refresh_token = models.TextField(default="", blank=True, null=True)

    objects = UserManager()
    USERNAME_FIELD = "username"

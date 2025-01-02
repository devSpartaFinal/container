from django.contrib import admin
from django.urls import path
from .views import *

urlpatterns = [
    path("", SignInOutAPIView.as_view(), name="signinout"),
    path("<str:username>", ProfileAPIView.as_view(), name='profile'),
    path("refresh_token", AuthAPIView.as_view(), name="refresh_token"),
    path("login/", AuthAPIView.as_view(), name="login"),
    path("logout/", AuthAPIView.as_view(), name="logout"),
    path("password/", PasswordAPIView.as_view(), name="password"),
]

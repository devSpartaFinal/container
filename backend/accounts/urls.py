from django.contrib import admin
from django.urls import path
from .views import *

urlpatterns = [
    path("", SignInOutAPIView.as_view(), name="signinout"),
    path("<str:username>", ProfileAPIView.as_view(), name="profile"),
    path("refresh/", TokenRefresh.as_view(), name="refresh_token"),
    path("auth/", AuthAPIView.as_view(), name="auth"),
    # path("logout/", AuthAPIView.as_view(), name="logout"),
    path("password/", PasswordAPIView.as_view(), name="password"),
]

# Google 로그인 관련 URL
urlpatterns += [
    path("google/", google_login, name="google_login"),
    path("google/callback/", GoogleLoginCallback.as_view(), name="google_login_callback"),
]

urlpatterns += [
    path("github/", github_login, name="github_login"),
    path("github/callback/", GitHubLoginCallback.as_view(), name="github_login_callback"),
]
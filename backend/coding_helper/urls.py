from django.contrib import admin
from django.urls import path, include
from accounts.views import EmailVerificationView
from django.http import HttpResponse
def home(request):
    return HttpResponse("Hello, Django!")

urlpatterns = [
    path('', home),
    path("admin/", admin.site.urls),
    path(
        "verify-email/<str:uidb64>/<str:token>/",
        EmailVerificationView.as_view(),
        name="verify-email",
    ),
    path("api/v1/accounts/", include("accounts.urls")),
    path("api/v1/chatbot/", include("chatbot.urls")),
    path("api/v1/quizbot/", include("quizbot.urls")),
    path("api/v1/chat/", include("chat.urls")),
]

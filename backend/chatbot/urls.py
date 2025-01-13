from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from .views import *


app_name = "chatbot"
urlpatterns = [
    path("", ChatSessionView.as_view(), name="chat_session"),
    path("summary/", SummaryView.as_view(), name="summary"),
    path("qna/", RagChatbotView.as_view(), name="new_qna"),
    path("qna/<int:chat_id>/", RagChatbotView.as_view(), name="qna"),
    path("file/", UserDocsView.as_view(), name="file"),
    path("load-docs/Django", DjangoView.as_view(), name="Django"),
    path("load-docs/Django_DRF", Django_DRFView.as_view(), name="Django_DRF"),
    path("load-docs/React", ReactView.as_view(), name="React"),
]


# 배포 시 필요없음
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
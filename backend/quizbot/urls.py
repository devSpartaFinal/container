from django.urls import path
from .views import *

urlpatterns = [
    path('request/', QuizRequestView.as_view(), name='quiz-request'),
    path('<int:quiz_id>/', QuizAPIView.as_view(), name='quiz-detail'),
    path('feedback/<int:quiz_id>/', QuizResultView.as_view(), name='quiz-feedback'),
    path('feedback/detail/<int:quiz_id>/', TotalFeedbackView.as_view(), name='feedback-detail'),
    path('feedback/get/<int:quiz_id>/', FeedbackGetView.as_view(), name='feedback-get'),
]

from django.urls import path
from . import views

urlpatterns = [
    path('request/', views.QuizRequestView.as_view(), name='quiz-request'),
    path('<int:quiz_id>/', views.QuizAPIView.as_view(), name='quiz-detail'),
    path('feedback/<int:quiz_id>/', views.TotalFeedabckView.as_view(), name='quiz-feedback'),
    path('feedback/detail/<int:quiz_id>/', views.IndividualFeedabckView.as_view(), name='feedback-detail'),
]

from django.urls import path
from . import views

urlpatterns = [
    path('categories/', views.CategoryListView.as_view(), name='category-list'),
    path('quizzes/<int:category_id>', views.QuizListView.as_view(), name='quiz-list'),
    path('answers/', views.UserAnswerView.as_view(), name='user-answer'),
    path('feedback/', views.FeedbackView.as_view(), name='feedback'),
]
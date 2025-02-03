from django.urls import path
from .views import RiddleScoresView

urlpatterns = [
    path('riddle-scores/', RiddleScoresView.as_view(), name='riddle_scores'),
]

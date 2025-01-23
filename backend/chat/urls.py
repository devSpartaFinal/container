from django.urls import path
from .views import *

urlpatterns = [
    path('riddle-scores/', RiddleScoresView.as_view(), name='riddle_scores'),
]

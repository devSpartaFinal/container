from django.urls import path
from .views import *

urlpatterns = [
    path('/riddle-scores/', fetch_riddle_scores, name='riddle_scores'),
]

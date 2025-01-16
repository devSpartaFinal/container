from rest_framework import serializers
from .models import Quiz, Question, Choice

# 퀴즈
class QuizSerializer(serializers.ModelSerializer):
    class Meta:
        model = Quiz
        fields = ['id', 'title']

# 문제
class QuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Question
        fields = ['content', 'answer_type']

class ChoiceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Choice
        fields = ['content']
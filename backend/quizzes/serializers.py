from rest_framework import serializers
from .models import Category, Quiz, UserAnswer, Feedback

# 카테고리
class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = ['id', 'name', 'material'] # content 필드는 사용자에게 보이지 않아도 되기 때문에 제외.

# 퀴즈
class QuizSerializer(serializers.ModelSerializer):
    class Meta:
        model = Quiz
        fields = ['id', 'category', 'question', 'answer', 'created_at']


# 사용자 답
class UserAnswerSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserAnswer
        fields = ['id', 'user', 'quiz', 'user_answer', 'is_correct']

# 피드백
class FeedbackSerializer(serializers.ModelSerializer):
    class Meta:
        model = Feedback
        fields = ['id', 'user_answer', 'feedback', 'created_at']
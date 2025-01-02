from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .models import *
from .serializers import *

# 카테고리
class CategoryListView(APIView):
    def get(self, request):
        categories = Category.objects.all()
        serializer = CategorySerializer(categories, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

# 퀴즈
class QuizListView(APIView):
    def get(self, request, category_id):
        quizzes = Quiz.objects.filter(category_id=category_id)
        serializer = QuizSerializer(quizzes, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

# 사용자 답    
class UserAnswerView(APIView):
    def post(self, request):
        serializer = UserAnswerSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

# 피드백
class FeedbackView(APIView):
    def post(self, request):
        serializer = FeedbackSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def get(self, request):
        user_answer_id = request.query_params.get('user_answer_id')
        if not user_answer_id:
            return Response({"error": "user_answer_id 가 필요합니다."}, status=status.HTTP_400_BAD_REQUEST)

        feedbacks = Feedback.objects.filter(user_answer_id=user_answer_id)
        serializer = FeedbackSerializer(feedbacks, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)
from django.db import models
from accounts.models import User

# Category 모델 (카테고리 테이블)
class Category(models.Model):
    name = models.CharField(max_length=100)  # 카테고리 이름 (예: '파이썬_라이브러리')
    material = models.TextField()  # 교재 이름 (예: 'Pandas 설치 및 Jupyter Notebook 설정하기')
    content = models.TextField(default='교재 내용')    # 교재 내용

    def __str__(self):
        return self.name


# Quiz 모델 (퀴즈 테이블)
class Quiz(models.Model):
    category = models.ForeignKey(Category, related_name='quiz', on_delete=models.CASCADE)  # Category와 연결
    question = models.TextField()  # 퀴즈 문제
    answer = models.TextField()  # 퀴즈 답
    created_at = models.DateTimeField(auto_now_add=True)  # 퀴즈 생성일

    def __str__(self):
        return self.question


# UserAnswer 모델 (사용자 답변 테이블)
class UserAnswer(models.Model):
    user = models.ForeignKey(User, related_name='user_answer', on_delete=models.CASCADE)  # 사용자
    quiz = models.ForeignKey(Quiz, related_name='user_answer', on_delete=models.CASCADE)  # 퀴즈
    user_answer = models.TextField()  # 퀴즈에 대한 사용자의 답변

    # 정답 여부를 저장할 수 있다면, 추가해도 좋을 것 같습니다.
    # is_correct = models.BooleanField()  # 사용자가 맞췄는지 여부

    def __str__(self):
        return f"{self.user.username} - {self.quiz.question}"


# Feedback 모델 (피드백 테이블)
class Feedback(models.Model):
    user_answer = models.ForeignKey(UserAnswer, related_name='feedback', on_delete=models.CASCADE)  # 사용자-퀴즈 관계
    feedback = models.TextField()  # 피드백 내용
    created_at = models.DateTimeField(auto_now_add=True)  # 피드백 생성일

    def __str__(self):
        return f"{self.user_answer.quiz.question}에 대한 피드백 - {self.created_at}"

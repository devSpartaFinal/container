from django.db import models
from django.conf import settings


class Quiz(models.Model):
    user = models.ForeignKey("accounts.User", on_delete=models.CASCADE, related_name="quiz")
    title = models.CharField(max_length=100)  # 퀴즈 제목
    description = models.TextField()  # 퀴즈들에 대한 전체적인 설명
    result = models.JSONField(default=dict) # 사용자가 답변 제출 시 퀴즈 결과 저장

class Question(models.Model):
    quiz = models.ForeignKey(Quiz, on_delete=models.CASCADE, related_name="questions")
    number = models.PositiveIntegerField()  # 문제 번호
    content = models.TextField()  # 문제
    code_snippets = models.TextField(blank=True, null=True)
    answer_type = models.CharField(max_length=100)  # 문제 형태(객관식, 단답형, ox)
    user_answer = models.JSONField(default=dict) # 사용자 답변
    feedback = models.JSONField(blank=True, null=True)   # 문제별 피드백

class Choice(models.Model):
    question = models.ForeignKey(
        Question, on_delete=models.CASCADE, related_name="choices"
    )
    number = models.PositiveIntegerField()  # 보기 번호
    content = models.TextField()  # 보기 내용
    is_correct = models.BooleanField()  # 정답 여부


class Reference(models.Model):
    category = models.CharField(max_length=255, null=True, blank=True)
    title = models.CharField(max_length=255, null=True, blank=True)
    content = models.TextField(null=True, blank=True)
    title_no = models.PositiveIntegerField(null=True, blank=True)

    class Meta:
        managed = False  # Django가 이 테이블을 관리하지 않도록 설정
        db_table = 'reference'

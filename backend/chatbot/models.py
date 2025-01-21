from django.db import models
from accounts.models import User


class ChatHistory(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name="chathistory")
    title = models.CharField(max_length=255, blank=True, null=True)  # 대화내용 요약
    conversation = models.JSONField(null=True, blank=True)
    summary_memory = models.TextField(
        null=True, blank=True
    )  # 대화가 길어지면 요약된 내역 사용
    last_response_user = models.JSONField(
        null=True, blank=True
    )  # 요약된 대화 내역과 함께 제공
    last_response_ai = models.JSONField(
        null=True, blank=True
    )  # 요약된 대화 내역과 함께 제공
    content = models.TextField(null=True, blank=True)  # 간단 QnA용
    content_info = models.JSONField(null=True, blank=True)

class Documents(models.Model):
    category = models.CharField(max_length=255, null=True, blank=True)
    title = models.CharField(max_length=255, null=True, blank=True)
    content = models.TextField(null=True, blank=True)
    title_no = models.PositiveIntegerField(null=True, blank=True)
    
    class Meta:
        managed = False  # Django가 이 테이블을 관리하지 않도록 설정
        db_table = 'documents'

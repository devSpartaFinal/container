from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.sites.models import Site
from .models import User  # User 모델이 있는 위치에 따라 경로 수정 필요

# 기존 User 모델 등록
admin.site.register(User, UserAdmin)

# Site 모델 커스터마이징
class SiteAdmin(admin.ModelAdmin):
    list_display = ('id', 'domain', 'name')  # 'id' 필드 표시
    ordering = ('id',)  # id 기준 정렬 (선택 사항)

# 기존 Site 모델을 다시 등록
admin.site.unregister(Site)  # 기본 Site 등록 해제
admin.site.register(Site, SiteAdmin)

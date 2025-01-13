from rest_framework import serializers
from .models import UserDocs

class UserDocsSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserDocs
        fields = ['user_id', 'title', 'file', 'url', 'content']

from django.shortcuts import render
from django.http import JsonResponse
from asgiref.sync import sync_to_async
from accounts.models import User

async def fetch_riddle_scores(request):
    user_data = await sync_to_async(list)(User.objects.values('username', 'RiddleScore'))
    return JsonResponse(user_data, safe=False)  # JSON 형식으로 반환


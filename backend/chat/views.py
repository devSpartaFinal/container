from django.http import JsonResponse
from accounts.models import User
from rest_framework.views import APIView

class RiddleScoresView(APIView):

    def get(self, request):
        user_data = list(User.objects.values('username', 'RiddleScore'))
        
        print(user_data)  
        return JsonResponse(user_data, safe=False)

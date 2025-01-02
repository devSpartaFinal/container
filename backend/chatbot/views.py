from rest_framework.views import APIView
from rest_framework.response import Response
from .chatbots import nonesense_quiz_bot

class ChatView(APIView):
    def post(self, request):
        user_message = request.data.get("message")
        chatbot_response = nonesense_quiz_bot(user_message)
        return Response({"message": chatbot_response})
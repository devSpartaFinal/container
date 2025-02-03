# asgi.py
import os
import django
from channels.routing import ProtocolTypeRouter, URLRouter
from django.core.asgi import get_asgi_application

# Django 환경 로드
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "coding_helper.settings")
django.setup()  # Django 앱을 명시적으로 로드

from chat.routing import websocket_urlpatterns  # django.setup() 이후에 import

application = ProtocolTypeRouter(
    {
        "http": get_asgi_application(),
        "websocket": URLRouter(websocket_urlpatterns),
    }
)

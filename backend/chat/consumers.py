# chat/consumers.py
import json
from channels.generic.websocket import AsyncWebsocketConsumer
import logging
logger = logging.getLogger(__name__)

class ChatConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        # 모든 사용자가 "global_room" 방에 참여
        self.room_name = "global_room"
        self.room_group_name = f"chat_{self.room_name}"

        print(f"Teddy: WebSocket connection request for room: {self.room_name}")

        # 방 그룹에 참여
        await self.channel_layer.group_add(
            self.room_group_name,
            self.channel_name
        )
        await self.accept()

    async def disconnect(self, close_code):
        # 방 그룹에서 떠남
        await self.channel_layer.group_discard(
            self.room_group_name,
            self.channel_name
        )

    async def receive(self, text_data):
        print(f"Teddy: WebSocket received the message: {text_data}")
        
        data = json.loads(text_data)
        message = data['message']
        username = data.get('username', '익명')  # 유저 이름이 없으면 '익명' 처리
        timestamp = data['timestamp']
        
        # 메시지를 방 그룹에 브로드캐스트
        await self.channel_layer.group_send(
            self.room_group_name,
            {
                'type': 'chat_message',
                'message': message,
                'username': username,
                'timestamp': timestamp,
            }
        )

    async def chat_message(self, event):
        message = event['message']
        username = event['username']
        timestamp = event['timestamp']
        
        # WebSocket으로 메시지 전송
        await self.send(text_data=json.dumps({
            'message': message,
            'username': username,
            'timestamp': timestamp,
        }))


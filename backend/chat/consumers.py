import json
from pprint import pprint
from channels.generic.websocket import AsyncWebsocketConsumer
from asgiref.sync import async_to_sync

class ChatConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        self.room_name = "global_room"
        self.room_group_name = f"chat_{self.room_name}"
        pprint(f"Teddy : User connected in : {self.room_name}")
        
        await self.accept()
        
    async def disconnect(self, close_code):
        # 그룹에서 제거
        await self.channel_layer.group_discard(
            self.room_name,
            self.channel_name
        )

    async def receive(self, text_data):
        data = json.loads(text_data)
        
        pprint(f"Teddy : Received message: {data}")
        
        if data['type'] == 'user_message':
            message = data['message']
            username = data.get('username', '익명')  # 유저 이름이 없으면 '익명' 처리
            timestamp = data['timestamp']
            # 메시지를 방 그룹에 브로드캐스트 (이 때 chat_message 가 발동)
            await self.channel_layer.group_send(
                self.room_group_name,
                {
                    'type': 'chat_message',
                    'message': message,
                    'username': username,
                    'timestamp': timestamp,
                }
            )

        elif data["type"] == "join":
            # 클라이언트가 보낸 join 메시지 처리
            username = data["username"]
            print(f"User {username} joined the room.")

            # 참여자 목록에 추가
            if not hasattr(self.channel_layer, "participants"):
                self.channel_layer.participants = set()

            self.channel_layer.participants.add(username)

            # 방 그룹에 참여
            await self.channel_layer.group_add(
                self.room_group_name,
                self.channel_name
            )
            # 참여자 목록을 모든 클라이언트에 전송
            await self.channel_layer.group_send(
                self.room_group_name,
                {
                    'type': 'update_participants',
                    'participants': list(self.channel_layer.participants),
                }
            )
        
        elif data["type"] == "leave":
            # 클라이언트가 보낸 leave 메시지 처리
            username = data["username"]
            print(f"User {username} has left the room.")
            
            # 참여자 목록에서 제거
            if hasattr(self.channel_layer, "participants") and username in self.channel_layer.participants:
                self.channel_layer.participants.remove(username)
            
            await self.channel_layer.group_discard(
                self.room_group_name,
                self.channel_name
            )
            
            await self.channel_layer.group_send(
                self.room_group_name,
                {
                    'type': 'update_participants',
                    'participants': list(self.channel_layer.participants),
                }
            )
            
    async def chat_message(self, event):
        message = event['message']
        username = event['username']
        timestamp = event['timestamp']

        # WebSocket으로 메시지 전송
        await self.send(text_data=json.dumps({
            'type': 'message',
            'message': message,
            'username': username,
            'timestamp': timestamp,
        }))

    async def update_participants(self, event):
        participants = event['participants']

        # WebSocket으로 참여자 목록 전송
        await self.send(text_data=json.dumps({
            'type': 'participants',
            'participants': participants,
        }))

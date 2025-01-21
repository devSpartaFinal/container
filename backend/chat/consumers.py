import json
import asyncio
from pprint import pprint
from channels.generic.websocket import AsyncWebsocketConsumer
from asgiref.sync import async_to_sync
from datetime import datetime, timedelta

class ChatConsumer(AsyncWebsocketConsumer):
    pop_quiz_active = False  # POP QUIZ 활성화 상태
    correct_answer_user = None  # 정답을 맞춘 유저
    
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
        
        if data["type"] == "pop_quiz_active":
        # 클라이언트에서 POP QUIZ 활성화 메시지 수신
            self.pop_quiz_active = data["active"]
            print(f"POP QUIZ active state updated: {self.pop_quiz_active}")
            return
    
        if data['type'] == 'user_message':
            message = data['message']
            username = data.get('username', '익명')  # 유저 이름이 없으면 '익명' 처리
            timestamp = data['timestamp']
            print(f"Teddy : 팝퀴즈 관련정보: {self.pop_quiz_active} and {message.lower()}")
            # POP QUIZ 정답 처리
            if self.pop_quiz_active and message.lower() == "a":
                print("\nTeddy : 정답!\n")
                self.pop_quiz_active = False  # POP QUIZ 비활성화
                
                # 정답 입력
                await self.channel_layer.group_send(
                    self.room_group_name,
                    {
                        'type': 'chat_message',
                        'message': message,
                        'username': username,
                        'timestamp': timestamp,
                    }
                )
                
                # 정답 알림 브로드캐스트
                await self.channel_layer.group_send(
                    self.room_group_name,
                    {
                        "type": "pop_quiz_result",
                        "message": f"{username}님이 정답을 맞췄습니다!",
                        "username": "ReadRiddle",
                        "timestamp": timestamp,
                    },
                )
                return
            
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
            # 참여자 목록을 모든 클라이언트에 전송
            await self.channel_layer.group_send(
                self.room_group_name,
                {
                    'type': 'quiz_active_check',
                    'quiz_status': self.pop_quiz_active,
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
            'type': 'user_message',
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

    async def quiz_active_check(self, event):

        # 연결된 클라이언트에게 pop_quiz_active 상태를 전달
        await self.send(text_data=json.dumps({
            "type": "quiz_active_check",  # 클라이언트가 수신할 타입
            "quiz_status": event["quiz_status"],  # 현재 pop_quiz_active 상태 전송
        }))
        
    async def pop_quiz_result(self, event):
        message = event["message"]
        username = event["username"]
        timestamp = event["timestamp"]

        # 정답을 맞춘 유저 전달
        if self.correct_answer_user:
            await self.send(text_data=json.dumps({
                "type": "pop_quiz_result",  # 클라이언트가 인식할 메시지 타입
                "message": message,
                "username": username,
                "timestamp": timestamp,
                "correct_answer_user": self.correct_answer_user,  # 정답을 맞춘 유저 추가
            }))
        else:
            await self.send(text_data=json.dumps({
                "type": "pop_quiz_result",  # 클라이언트가 인식할 메시지 타입
                "message": message,
                "username": username,
                "timestamp": timestamp,
            }))
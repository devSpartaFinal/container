import json
import asyncio
from pprint import pprint
from channels.generic.websocket import AsyncWebsocketConsumer
from channels.layers import get_channel_layer
from asgiref.sync import async_to_sync, sync_to_async
from datetime import datetime, timedelta
from .llm import chat_quiz
from accounts.models import User

class ChatConsumer(AsyncWebsocketConsumer):
    pop_quiz_active = False  # POP QUIZ 활성화 상태
    correct_answer_user = None  # 정답을 맞춘 유저
    question = f"해당 메세지가 보일 경우, 페이지 새로고침(F5)을 눌러주세요..!"
    quiz_answer = "default_answer"
    
    print(f"처음 생성된 퀴즈: {question}, 정답: {quiz_answer}")
    
    async def connect(self):
        self.channel_layer = get_channel_layer()
        self.room_name = "global_room"
        self.room_group_name = f"chat_{self.room_name}"
        self.question = ChatConsumer.question
        self.quiz_answer = ChatConsumer.quiz_answer
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
        
        if data["type"] == "create_quiz":
            print("퀴즈 생성요청 수신")
            
            if self.isOwner:
                ChatConsumer.question, ChatConsumer.quiz_answer = chat_quiz()
                print(f"퀴즈 생성 완료. 정답: {ChatConsumer.quiz_answer}")
            
                # 모든 클라이언트에 브로드캐스트
                await self.channel_layer.group_send(
                    "quiz_group",  # 모든 클라이언트가 속한 그룹
                    {
                        "type": "quiz_update",  # 이벤트 타입
                        "quiz_answer": ChatConsumer.quiz_answer,
                    }
                )
            return
        
        if data["type"] == "pop_quiz_active":
        # 클라이언트에서 POP QUIZ 활성화 메시지 수신
            ChatConsumer.pop_quiz_active = data["active"]
            timestamp = data['timestamp']
            print(f"POP QUIZ active state updated: {ChatConsumer.pop_quiz_active}")
            
            # 퀴즈 브로드캐스트
            if data['active'] == True and self.isOwner:    
                await self.channel_layer.group_send(
                    self.room_group_name,
                    {
                        "type": "quiz_broadcast",
                        "message": ChatConsumer.question,
                        "username": "ReadRiddle",
                        'timestamp': timestamp,
                    }
                )
                await self.channel_layer.group_send(
                    self.room_group_name,
                    {
                        "type": "quiz_intro",
                        "message": "정답은 단답형입니다. (띄어쓰기, 대소문자 구분 X)",
                        "username": "ReadRiddle",
                        'timestamp': timestamp,
                    }
                )
            return
        
        if data["type"] == "pop_quiz_timeout":
            timestamp = data['timestamp']
            await self.channel_layer.group_send(
                    self.room_group_name,
                    {
                        "type": "quiz_timeout",
                        "message": f"🔔---------제한시간 종료!---------🔔 \n 정답은 {ChatConsumer.quiz_answer} 였습니다.",
                        "username": "ReadRiddle",
                        'timestamp': timestamp,
                    }
                )
            return
    
        if data['type'] == 'user_message':
            message = data['message']
            username = data.get('myusername', '익명')  # 유저 이름이 없으면 '익명' 처리
            timestamp = data['timestamp']
            print(f"Teddy : 팝퀴즈 관련정보: {ChatConsumer.pop_quiz_active} and {message}")
            input_answer = message.replace(" ", "").lower()
            real_answer = ChatConsumer.quiz_answer.replace(" ", "").lower()
            print(f"Teddy : 팝퀴즈 정답비교: {input_answer} ?= {real_answer}")
            # POP QUIZ 정답 처리
            if ChatConsumer.pop_quiz_active and message.replace(" ", "").lower() == ChatConsumer.quiz_answer.replace(" ", "").lower():
                print("\nTeddy : 정답!\n")
                ChatConsumer.pop_quiz_active = False  # POP QUIZ 비활성화
                # 정답을 맞춘 유저 점수 증가
                user = await sync_to_async(User.objects.get)(username=username)
                user.RiddleScore += 10  # RiddleScore 10 증가
                await sync_to_async(user.save)()  # 변경사항 저장
                print(user.username, "님의 RiddleScore가 10 증가하였습니다.")
                
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
                        "message": f"{username}님 정답!! \n Riddle Score +10점을 획득했습니다! 💯💯",
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
            self.isOwner = False
            self.pop_quiz_active = False
            username = data["myusername"]
            print(f"User {username} joined the room.")

            # 참여자 목록에 추가
            if not hasattr(self.channel_layer, "participants"):
                self.channel_layer.participants = set()
                print(f"participants 그룹이 생성되었습니다.")
                self.isOwner = True # 방장 여부
                print(f"{username} 가 방장이 되었습니다.")
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
            username = data["myusername"]
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
            # 남아있는 참여자가 있다면 새로운 방장을 지정
            other_participants = [
                participant for participant in self.channel_layer.participants
                if participant != data["myusername"]
            ]
            if other_participants and self.isOwner:
                print(f"방장 {username} 이 방을 나갔습니다.")
                new_owner = other_participants[0]  # 첫번째 참여자 선택
                print(f"New owner assigned: {new_owner}")
                # 새로운 방장에게 owner 권한 부여 메시지 전송
                await self.channel_layer.group_send(
                    self.room_group_name,
                    {
                        "type": "assign_owner",
                        "new_owner": new_owner,
                    }
                )
            elif not other_participants:
                del self.channel_layer.participants
                print("참여자가 없어 participants 그룹이 삭제되었습니다.")
        
        elif data["type"] == "update_answer":
            self.quiz_answer = data["quiz_answer"]
        elif data["type"] == "change_owner":
            self.isOwner = True
            print(f"Owner changed to {data['myusername']}")
            
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

    # async def quiz_active_check(self, event):
    #     # 연결된 클라이언트에게 pop_quiz_active 상태를 전달
    #     await self.send(text_data=json.dumps({
    #         "type": "quiz_active_check",  # 클라이언트가 수신할 타입
    #         "quiz_status": event["quiz_status"],  # 현재 pop_quiz_active 상태 전송
    #     }))
        
    async def pop_quiz_result(self, event):
        message = event["message"]
        username = event["username"]
        timestamp = event["timestamp"]
        
        # 정답을 맞춘 유저 전달
        if self.correct_answer_user:
            user = await sync_to_async(User.objects.get)(username=username)
            user.RiddleScore += 10  # RiddleScore 10 증가
            await sync_to_async(user.save)()  # 변경사항 저장
            print(user.username, "님의 RiddleScore가 10 증가하였습니다.")
        
        await self.send(text_data=json.dumps({
            "type": "pop_quiz_result",  # 클라이언트가 인식할 메시지 타입
            "message": message,
            "username": username,
            "timestamp": timestamp,
            "correct_answer_user": ChatConsumer.correct_answer_user,
        }))
        
        
    async def quiz_broadcast(self, event):
        print(f"Teddy : 클라이언트로 팝퀴즈 발송")
        await self.send(text_data=json.dumps({
                "type": "quiz_broadcast",
                "message": event["message"],
                "username": event["username"],
                "timestamp": event["timestamp"],
            }))
    
    async def quiz_intro(self, event):
        await self.send(text_data=json.dumps({
                "type": "quiz_intro",
                "message": event["message"],
                "username": event["username"],
                "timestamp": event["timestamp"],
            }))
    
    async def quiz_update(self, event):
        # 그룹 메시지를 수신하여 클라이언트로 전송
        await self.send(text_data=json.dumps({
            "type": "quiz_update",
            "quiz_answer": event["quiz_answer"],
        }))
        
    async def assign_owner(self, event):
        # 그룹 메시지를 수신하여 클라이언트로 전송
        await self.send(text_data=json.dumps({
            "type": "assign_owner",
            "new_owner": event["new_owner"],
        }))
    
    async def quiz_timeout(self, event):
        # 그룹 메시지를 수신하여 클라이언트로 전송
        await self.send(text_data=json.dumps({
            "type": "quiz_timeout",
            "message": event["message"],
            "username": event["username"],
            "timestamp": event["timestamp"],
        }))
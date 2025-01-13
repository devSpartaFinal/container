import os
import json
import openai
from openai import OpenAI
from pydantic import BaseModel

openai.api_key = os.getenv("OPENAI_API_KEY")
# Pydantic 모델 정의

class Assistant(BaseModel):
    id: int
    content: str

class User(BaseModel):
    id: int
    content: str

class ChatHistory(BaseModel):
    title: str
    response: str
    user_input: User
    ai_response : Assistant


# OpenAI 클라이언트 설정
client = OpenAI(api_key=openai.api_key)

prompt = """
    전체 대화내용을 요약하는 제목을 생성해라
    context를 참고하여 질문에 답변해라
    chat history를 참고하여 문맥을 유지해라
    chat history를 참고하여 각각의 id를 계산해라
    """

# 퀴즈 데이터를 구조화하여 응답 받기
completion = client.beta.chat.completions.parse(
    model="gpt-4o-mini-2024-07-18",
    messages=[
        {"role": "system", "content": prompt},
        {"role": "user", "content": "금요일 방송 일정"},
    ],
    response_format=ChatHistory,  # 여기에서 QuizResponse 모델을 설정
)

# 응답 데이터
quiz = completion.choices[0].message.parsed

# JSON 형태로 추출
quiz_json = json.dumps(quiz.model_dump(), indent=2)
quiz_json = json.loads(quiz_json)

# 출력된 JSON 데이터
print(quiz_json)

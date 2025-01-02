import os
from dotenv import load_dotenv
from openai import OpenAI

load_dotenv()
CLIENT = OpenAI(api_key = os.getenv("OPEN_AI_KEY"))

# 일단 넌센스 퀴즈 챗봇으로 챗봇 틀 만들기
def nonesense_quiz_bot(user_message):

    prompt = """
    너는 퀴즈를 내는 챗봇이야. 재치있는 말투로 이야기해야해.
    """
    # OpenAI API 호출
    completion = CLIENT.chat.completions.create(
        model="gpt-4o-mini",  # 사용 모델
        messages=[
            {
                "role": "system",
                "content": prompt
            },
            {
                "role": "user",
                "content": user_message,
            }
        ],
    )
    return completion.choices[0].message.content
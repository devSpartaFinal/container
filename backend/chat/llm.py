import os
import json
import openai
from openai import OpenAI
from pydantic import BaseModel
from operator import itemgetter
from django.core.cache import cache
# from django.core.cache import cache


openai.api_key = os.getenv("OPENAI_API_KEY")
client = OpenAI(api_key=openai.api_key)

def chat_quiz():
    cache_key = "chat_quiz"
    subjects = cache.get(cache_key)
    selected_subject = ""
    if subjects:
        print(f"\n<--------------캐시 호출-------------->\n")
        subject_list = subjects["subjects"]
        for subject in subject_list:
            if subject["done"] == False:
                subject["done"] = True
                selected_subject = subject
                print(
                    f"<--------------선택된 주제--------------> \n {selected_subject}\n"
                )
                break
            
        if selected_subject:
            print(f"\n<--------------주제 선택/캐시 적용-------------->\n")
            cache.set(cache_key, subjects, timeout=60 * 60)
        else:
            subjects = None
            print(f"\n<--------------주제 모두 사용-------------->\n")

    if not subjects:
        print(f"\n<--------------캐시 없음/주제 모두 사용-------------->\n")

        # 주제, 난이도 생성 / 한시간에 12개 - 5분에 하나
        class Subject(BaseModel):
            subject: str
            difficulty: str
            done: bool  # 이미 사용된 주제는 false 처리

        class Subjects(BaseModel):
            subjects: list[Subject]

        prompt = f"""
        프로그래밍에 관련된 주제 12개를 생성해줘
        어려움
        done 은 모두 false
        """

        completion = client.beta.chat.completions.parse(
            model="gpt-4o",  # 조정 필요
            messages=[
                {"role": "system", "content": prompt},
            ],
            temperature=0.7,  # 조정 필요
            response_format=Subjects,
        )

        subject = completion.choices[0].message.parsed
        subject_json = json.dumps(subject.model_dump(), indent=2)
        subject_dict = json.loads(subject_json)
        print(f"<--------------생성된 주제--------------> \n {subject_dict}\n")
        subject_list = subject_dict["subjects"]
        print(f"<--------------주제 리스트--------------> \n {subject_list}\n")
        for subject in subject_list:
            if subject["done"] == False:
                subject["done"] = True
                selected_subject = subject
                print(
                    f"<--------------선택된 주제--------------> \n {selected_subject}\n"
                )
                break
        cache.set(cache_key, subject_dict, timeout=60 * 60)

    class ChatQuiz(BaseModel):
        description: str
        choices: str
        answer: int

    prompt = f"""
        {selected_subject}
        주제를 참고하여 프로그래밍에 관련된 문제를 생성해줘
        done : true 로 되어있는 주제는 제외하고 생성

        description 은 문제 내용/설명
        choices 선택지
        answer 정답은 번호
        """

    completion = client.beta.chat.completions.parse(
        model="gpt-4o",  # 조정 필요
        messages=[
            {"role": "system", "content": prompt},
        ],
        temperature=0.5,  # 조정 필요
        response_format=ChatQuiz,
    )

    quiz = completion.choices[0].message.parsed
    quiz_json = json.dumps(quiz.model_dump(), indent=2)
    quiz_dict = json.loads(quiz_json)
    question = f"{quiz_dict['description']} \n\n {quiz_dict['choices']}"
    answer = str(quiz_dict['answer'])
    return question, answer

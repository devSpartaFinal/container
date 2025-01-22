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
        print("\n<--------------캐시 호출-------------->\n")
        subject_list = subjects["subjects"]
        for subject in subject_list:
            if subject["done"] == False:
                subject["done"] = True
                selected_subject = subject
                print("<--------------주제 선택--------------> \n")
                break

        if selected_subject:
            print("\n<--------------주제 선택/캐시 적용-------------->\n")
            cache.set(cache_key, subjects, timeout=60 * 60)
        else:
            subjects = None
            print("\n<--------------주제 모두 사용-------------->\n")

    if not subjects:
        print("\n<--------------캐시 없음/주제 모두 사용-------------->\n")

        # 주제, 난이도 생성 / 한시간에 12개 - 5분에 하나
        class Subject(BaseModel):
            subject: str
            difficulty: str
            done: bool  # 이미 사용된 주제는 false 처리

        class Subjects(BaseModel):
            subjects: list[Subject]

        prompt = f"""
        Make **12** 'Subject' about Programming Language and AI
        'difficulty' is Hard
        `done' is false
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
        print("<--------------주제 선택-------------->")
        subject_list = subject_dict["subjects"]
        for subject in subject_list:
            if subject["done"] == False:
                subject["done"] = True
                selected_subject = subject
                print("<--------------주제 선택-------------->")
                break
        cache.set(cache_key, subject_dict, timeout=60 * 60)

    class ChatQuiz(BaseModel):
            description: str
            answer: str
            language : str

    prompt = f"""
            **only in korean**
            Generate questions related to programming languages and AI programming based on the given topic.
            
            Each ChatQuiz should include:

            description: The content of the question.
            answer: The correct answer, provided as a short noun word
            language : "한글입니다." or "영어입니다." or "숫자입니다."

            <description>
            Include simple intoduction of the Topic
            Include both conceptual knowledge and code-based problems. 
            For code-related questions, include a code snippet in the Description
            **remove annotation in code snippet**
            **exclude answer in description**
            **question is located only in last sentence**
            </description>

            **if answer is in korean give alert*

            <topic>
            {selected_subject}
            </topic>
            **only in korean**
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
    question = f"[POP RIDDLE]\n{quiz_dict['description']}\n정답은 {quiz_dict['language']}"
    answer = str(quiz_dict["answer"]).replace(" ", "")
    return question, answer
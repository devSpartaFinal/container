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
        Make **30** 'Subject' about programming algorithm
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
        code_snippet: str
        answer: str

    prompt = f"""
            **only in korean**

            Generate 10 questions about topic.
            question type is "code-based problems" or "conceptual knowledge"
            **question is located only in last sentence**
            **Do Not include answer in description**
            include code in ```code``` format
            **remove annotation in code snippet**
            **Do Not include answer in code_snippet**

            <conceptual knowledge>
            description: concept or knowledge
            code_snippet: code example
            answer: short answer (maximum 3 word)
            </conceptual knowledge>

            <code-based problems>
            description: answer code to fill blank
            code_snippet: code with blank
            answer: short code
            </code-based problems>

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
    question = (
        f"[POP RIDDLE]\n{quiz_dict['description']}\n\n{quiz_dict['code_snippet']}"
    )
    answer = str(quiz_dict["answer"])
    return question, answer

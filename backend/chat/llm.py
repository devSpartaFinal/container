import os
import json
import openai
from openai import OpenAI
from pydantic import BaseModel
from operator import itemgetter
from django.core.cache import cache


openai.api_key = os.getenv("OPENAI_API_KEY")
client = OpenAI(api_key=openai.api_key)


from pprint import pprint


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

            Generate question about topic.
            
            question type is "code-based problems" or "conceptual knowledge"

            <conceptual knowledge>
            description: ask concept or knowledge
            code_snippet: code example
            answer: short answer (maximum 1 word)
            </conceptual knowledge>

            <code-based problems>
            description: ask code to fill blank
            code_snippet: **only include code**
            answer: code
            </code-based problems>

            <topic>
            {selected_subject}
            </topic>

            <rule>
            located question in last sentence
            do not include answer in description and code_snippet.
            explain the concept and knowledge in detail without directly mentioning the answer or specific keywords
            Include a practical and detailed code example in code_snippet, excluding any references or annotations.
            </rule>

            <conceptual knowledge example>
            <positive example>
            description: "새로운 화폐가 생성되는 과정(조폐)에서, 생성자들(채굴자들)에게 "이것"을 강제하여 화폐의 가치와 보안을 보장합니다. 
                분산 네트워크에서는 조폐 과정에서 누가 얼마의 새 화폐를 받을지를 결정할 중앙 권력이 없기 때문에 모든 참여자들이 자동적으로 동의할 수 있는 방법이 필요합니다. 
                이때 일방향함수인 해시 함수가 계산(검산)하기는 쉽지만 역을 구하는 것(채굴)은 어렵다는 것에 착안하여, 모든 참여자가 해시 함수를 계산해서 가장 먼저 계산한 사람이 새 화폐를 받아가게 하는 것 입니다. 
                최초로 상업적 성공을 거둔 암호화폐 비트코인의 경우, 블록체인의 다음 블록을 캐기 위한 해시 함수의 입력값에 거래내역을 담은 블록체인의 최신값을 연동시켜서, 송금과 조폐 양 기능과 보안을 동시에 해결하였습니다.
                비트코인 블록체인에서 채택된 합의 알고리즘으로, 네트워크에 참여하는 노드(컴퓨터)들이 일정한 계산 작업을 수행하도록 설계된 시스템은 무엇일까요?"
            code_snippet :""
            answer: 작업증명
            </positive example>

            <negative example>
            description: "블록체인 합의 메커니즘에서 '작업 증명(Proof of Work)'의 주요 개념은 무엇인가요?"
            code_snippet:""
            answer: 작업증명
            </negtive example>
            </conceptual knowledge example>

            **only in korean**
            """

    completion = client.beta.chat.completions.parse(
        model="gpt-4o",  # 조정 필요
        messages=[
            {"role": "system", "content": prompt},
        ],
        temperature=0.1,  # 조정 필요
        response_format=ChatQuiz,
    )

    quiz = completion.choices[0].message.parsed
    quiz_json = json.dumps(quiz.model_dump(), indent=2)
    quiz_dict = json.loads(quiz_json)
    answer = quiz_dict["answer"]
    description = quiz_dict["description"].replace(answer, "[__________]")
    code_snippet = quiz_dict["code_snippet"]
    if code_snippet:
        code_snippet = code_snippet.replace("```", "").replace(answer, "[__________]")

    question = f"[POP RIDDLE]\n{description}\n\n```\n{code_snippet}\n```"
    pprint(question)

    return question, answer

import os
import json
import openai
import random
from openai import OpenAI
from pydantic import BaseModel
openai.api_key = os.getenv("OPENAI_API_KEY")

def quizz_chain(content, input):
    # Pydantic 모델 정의
    class QuestionChoice(BaseModel):
        id: int 
        content: str
        is_correct: bool

    class Question(BaseModel):
        id: int
        content: str
        answer_type: str
        choices: list[QuestionChoice]

    class QuizResponse(BaseModel):
        # id: int # DB에서 자동 생성
        title: str
        description: str
        questions: list[Question]

    type = input.get('type', 'ox')
    count = input.get('count', 5)
    difficulty = input.get('difficulty', 'easy')
    correct_answer_distribution = []
    if type == '4_multiple_choice':
        for _ in range(1, int(count) + 1):
                correct_index = random.randint(1, 4)
                suffle = f"""
                qustions_id : {_},
                choices_id : {correct_index},
                is_correct : true
                """
                correct_answer_distribution.append(suffle)
        description = f'create {count}, {difficulty} quiz with 4_multiple_choice. and follow answer_sheet : {correct_answer_distribution}'
    elif type == 'ox':
        for _ in range(1, int(count) + 1):
                correct_index = random.randint(1, 2)
                correct_answer_distribution.append(correct_index)
        description = f'create {count}, {difficulty} quiz with true or false (O/X). and follow answer_sheet : {correct_answer_distribution}'
        
    # OpenAI 클라이언트 설정
    client = OpenAI(api_key=openai.api_key)
    prompt = f"""
        must use **korean**
        Create a quiz about context. 

        **{description}**
   
        if 'easy': Problems related to core concepts or key information.
        if 'medium': Problems that could be confusing, involving detailed information.
        if 'hard': Application problems, including coding challenges.

        coding challenge is includes three types of problems:

        Select the expected output based on the given code.
        Choose the appropriate code that matches the given output.
        Fill in the blanks in the code with the correct options.

        make sure that the options include full sentences, not just short answers

        mark the correct answer for each question.

        context : {content}
        """
    # 퀴즈 데이터를 구조화하여 응답 받기
    completion = client.beta.chat.completions.parse(
        model="gpt-4o-mini-2024-07-18",
        messages=[
            {"role": "system", "content": prompt},
        ],
        temperature=0.3,
        response_format=QuizResponse,  # 여기에서 QuizResponse 모델을 설정
    )

    # 응답 데이터
    quiz = completion.choices[0].message.parsed

    # JSON 형태로 추출
    quiz_json = json.dumps(quiz.model_dump(), indent=2)
    return quiz_json


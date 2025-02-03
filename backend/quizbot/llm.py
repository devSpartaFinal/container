import os
import time
import json
import openai
import random
from pydantic import BaseModel
from openai import OpenAI
from operator import itemgetter
from langchain_openai import ChatOpenAI
from langchain_openai import OpenAIEmbeddings
from langchain_core.runnables import RunnableMap
from langchain_core.prompts import PromptTemplate
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser

openai.api_key = os.getenv("OPENAI_API_KEY")


def quizz_chain(content, input):
    type = input.get("type", "ox")
    count = input.get("count", 5)
    difficulty = input.get("difficulty", "easy")
    correct_answer_distribution = []
    if type == "4_multiple_choice":
        for _ in range(1, int(count) + 1):
            correct_index = random.randint(1, 4)
            suffle = f"""
                qustions_id : {_},
                choices_id : {correct_index},
                is_correct : true
                """
            correct_answer_distribution.append(suffle)
        description = f"create {count}, {difficulty} quiz with 4_multiple_choice. and follow answer_sheet : {correct_answer_distribution}"
    elif type == "ox":
        for _ in range(1, int(count) + 1):
            correct_index = random.randint(1, 2)
            correct_answer_distribution.append(correct_index)
        description = f"create {count}, {difficulty} quiz with true or false (O/X). and follow answer_sheet : {correct_answer_distribution}"
        # Pydantic 모델 정의

    class QuestionChoice(BaseModel):
        id: int
        number : int
        content: str
        is_correct: bool

    # if difficulty == "hard" :

    # else :
    #     class Question(BaseModel):
    #         id: int
    #         content: str
    #         code_snippets : None
    #         answer_type: str
    #         choices: list[QuestionChoice]

    class Question(BaseModel):
        id: int
        number : int
        content: str
        code_snippets: str
        answer_type: str
        choices: list[QuestionChoice]

    class QuizResponse(BaseModel):
        # id: int # DB에서 자동 생성
        title: str
        description: str
        questions: list[Question]

    # OpenAI 클라이언트 설정
    client = OpenAI(api_key=openai.api_key)
    prompt = f"""
        **Language:** only in Korean
        **Context:** {content}
        **Description:** {description}
        **answer_type** : 4_multiple_choice or ox
        Generate quizzes based on the given context and ensure they align with the following difficulty levels:
        - **Easy**: Problems focusing on basic concepts, fundamental principles, or straightforward information from the context. Require minimal reasoning and should be solvable by beginners.
        - **Medium**: Problems that involve slightly complex ideas, require critical thinking, or include detailed information. May include tricky concepts or require interpreting context more deeply.
        - **Hard**: Create advanced Python coding challenges focusing on machine learning (ML), deep learning (DL), large language models (LLMs), Docker, Django, or Django REST framework (DRF). Challenges should require deep analytical thinking, manual coding, and an in-depth understanding of complex ML/DL frameworks and principles.
        **For Hard:** Each challenge must include at least one of the following elements:
        - Manually implement a custom neural network model without using pre-built layers.
        - Develop a loss function or optimization algorithm (e.g., gradient descent) from scratch.
        - Process and analyze a given dataset, incorporating visualization and preprocessing techniques.
        Challenges should be designed to push problem-solving skills and require writing efficient, scalable code.
        <code_snippets>
        You should include code snippets broadly from the provided context, ensuring a comprehensive coverage of the topic.
        Context: {content} difficulty
        Important: Do not include direct explanatory hints or clues about the correct answer outside of the quizzes itself. Ensure that the code presented provides enough information for problem-solving without explicitly revealing the answer.
        Questions should challenge the reader to think critically by analyzing, interpreting, or applying the given code in realistic scenarios.
        **Note:** Use Markdown syntax to format the code snippets properly for better readability.  
        do not include annotation and text without code.
        do not include code snippets if it in the choices.
        do not include '#'
        </code_snippets>
        **Types of problems:**
        1. Select the expected output based on the given code.
        2. Choose the appropriate code that matches the given output.
        3. Fill in the blanks in the code with correct options.
        Include detailed examples and explanations for all questions. Ensure that answer options are full sentences, not just short answers. Mark the correct answer explicitly.

        **Answer Validation:**  
        Ensure that among the provided answer choices, **only one option is the correct answer**, and the other options are plausible but incorrect. Incorrect answers should be realistic distractors that test conceptual understanding and avoid being misleading or ambiguous.  

        Include detailed examples and explanations for all questions. Ensure that answer options are full sentences, not just short answers. Mark the correct answer explicitly.
        **Language:** only in Korean
        """
    # 퀴즈 데이터를 구조화하여 응답 받기
    completion = client.beta.chat.completions.parse(
        model="gpt-4o",
        messages=[
            {"role": "system", "content": prompt},
        ],
        temperature=0.5,
        response_format=QuizResponse,  # 여기에서 QuizResponse 모델을 설정
    )
    # 응답 데이터
    quiz = completion.choices[0].message.parsed
    # JSON 형태로 추출
    quiz_json = json.dumps(quiz.model_dump(), indent=2)
    return quiz_json


def total_feedback_chain():
    prompt = PromptTemplate.from_template(
        """
    must use **korean**
    Create feedback about user result.
    include feedback about score, result
    **return only json**
    **remove any space
    **do not include```json```**

    <quiz title>
    {title}
    </quiz title>

    <quiz description>
    {description}
    </quiz description>

    <result>
    {result}
    </result>

    <questions>
    {questions}
    </questions>

    <example>
    "total_feedback" : ""
    </example>
    """
    )

    llm = ChatOpenAI(model="gpt-4o-mini", api_key=openai.api_key, temperature=0.3)
    chain = (
        RunnableMap(
            {
                "title": itemgetter("title"),
                "description": itemgetter("description"),
                "result": itemgetter("result"),
                "questions": itemgetter("questions"),
            }
        )
        | prompt
        | llm
        | StrOutputParser()
    )
    return chain


def individual_feedback_chain():
    prompt = PromptTemplate.from_template(
        """
    must use **korean**
    Create feedback about user_answer.
    include feedback about how to solve question
    **return only json**
    **remove any space
    **do not include```json```**

    <question>
    {question}
    </question>

    <choice>
    {choice}
    </choice>

    <user_answer>
    {user_answer}
    </user_answer>

    <example>
    "feedback" : ""
    </example>
    """
    )

    llm = ChatOpenAI(model="gpt-4o-mini", api_key=openai.api_key, temperature=0.3)
    chain = (
        RunnableMap(
            {
                "question": itemgetter("question"),
                "choice": itemgetter("choice"),
                "user_answer": itemgetter("user_answer"),
            }
        )
        | prompt
        | llm
        | StrOutputParser()
    )
    return chain

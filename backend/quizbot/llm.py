import os
import time
import openai
import json
from openai import OpenAI
from operator import itemgetter
from langchain_openai import ChatOpenAI
from langchain_openai import OpenAIEmbeddings
from langchain_core.runnables import RunnableMap
from langchain_core.prompts import PromptTemplate
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser

# openai.api_key = os.environ.get("MY_OPENAI_API_KEY")
openai.api_key = os.getenv("OPENAI_API_KEY")
def quizz_chain(content):
    prompt = PromptTemplate.from_template(
        """
    must use **korean**
    Create a quiz about context.

    If {type} is '4_multiple_choice', create a multiple-choice question with 4 options.
    If {type} is 'ox', create a true or false (O/X) choices. 

    Include {count} {type} questions and mark the correct answer for each question.
    quiz must be {difficulty}.

    if 'easy': Problems related to core concepts or key information.
    if 'medium': Problems that could be confusing, involving detailed information.
    if 'hard': Application problems, including coding challenges.

    coding challenge is includes three types of problems:

    Select the expected output based on the given code.
    Choose the appropriate code that matches the given output.
    Fill in the blanks in the code with the correct options.

    make sure that the options include full sentences, not just short answers

    **return only json**
    **do not include```json```**

    <cotext>
    {content}
    </context>

    <example>
    "id": <int : quizz id>,
    "title": <str: quizz title>,
    "description": <str: quizz description>,
    "questions": [
    <dict : quizz list>
        <dict : quizz>
        "id": 1,
            "content": "",
            "answer_type": "",
            "choices": [
            <dict : choice>
                "id": 1,
                "content": "str",
                "is_correct": true
            </dict : choice>
                ]
        </dict : quizz>
    </dict : quizz list>
    ]
    </example>
    """
    )

    llm = ChatOpenAI(model="gpt-4o-mini", api_key=openai.api_key, temperature=0.5)
    chain = (
        RunnableMap(
            {
                "content": lambda inputs: content,
                "type": itemgetter("type"),
                "count": itemgetter("count"),
                "difficulty": itemgetter("difficulty"),
            }
        )
        | prompt
        | llm
        | StrOutputParser()
    )
    return chain


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
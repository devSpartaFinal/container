import os
import json
import pickle
import openai
from openai import OpenAI
from pydantic import BaseModel
from operator import itemgetter
from langchain_openai import ChatOpenAI
from langchain_openai import OpenAIEmbeddings
from langchain_community.vectorstores import FAISS
from langchain.retrievers import EnsembleRetriever
from langchain.retrievers import MultiQueryRetriever
from langchain_community.retrievers import BM25Retriever
from langchain_core.output_parsers import StrOutputParser

openai.api_key = os.getenv("OPENAI_API_KEY")
EMBED = OpenAIEmbeddings(model="text-embedding-ada-002", api_key=openai.api_key)
client = OpenAI(api_key=openai.api_key)


def get_retriever(CATEGORY):
    BASE_DIR = "chatbot/VDB/"
    PATH = BASE_DIR + CATEGORY
    faiss_db = FAISS.load_local(
        PATH + "/faiss_index", EMBED, allow_dangerous_deserialization=True
    )
    faiss = faiss_db.as_retriever()
    with open(PATH + "/bm25_retriever.pkl", "rb") as f:
        bm25 = pickle.load(f)
    retriever = EnsembleRetriever(
        retrievers=[faiss, bm25],
        weights=[0.3, 0.7],  # bm25 가중치 늘리기 시도할 것 0.3 , 0.7
    )
    return retriever


def multi_query_llm(question):

    class MultiQuery(BaseModel):
        concept_query: str
        application_query: str
        code_query: str

    prompt = f"""
        **only in english**
        You are an expert at enhancing search results by rephrasing questions in different ways.
        Based on the question below, create 3 alternative versions of the same question. 
        first question should be related to the concept.
        second should be about application.
        third should be sample code inside <code_snipet></code_snipet>

        <question>
        {question}
        </question>
        """
    # 퀴즈 데이터를 구조화하여 응답 받기
    completion = client.beta.chat.completions.parse(
        model="gpt-4o-mini-2024-07-18",
        messages=[
            {"role": "system", "content": prompt},
        ],
        temperature=0.3,
        response_format=MultiQuery,
    )

    # 응답 데이터
    query = completion.choices[0].message.parsed

    # JSON 형태로 추출
    query_json = json.dumps(query.model_dump(), indent=2)
    query_dict = json.loads(query_json)
    query_values = list(query_dict.values())

    # 결과 출력
    return query_values


def summary(content, query):

    prompt = f"""
    Yor are textbook maker.
    make content in an easy-to-understand way.  
    Format in **Markdown**.

    ### Requirements  
    1. **Reply only in Korean**
    2. **Key Concepts**: Briefly explain the main ideas.  
    3. **Important Terms**: Include key terms with simple definitions and detail definitions
    4. **Practical Applications**: Provide examples of real-world use cases.
    5. **Code Snippets**: Format all code snippets using ```code``` blocks.  
    6. **References**: Gather all links mentioned in the text and list them at the end as references.
    7. example must have how to set up, how to make or use, explain of compositions.
    8. include all imformatrion about query in conetent

    <user_question>
    {query}
    </user_question>

    <context>
    {content}
    </context> 
    """

    completion = client.chat.completions.create(
        model="gpt-4o-mini",  # 사용 모델
        messages=[
            {"role": "user", "content": prompt},
        ],
    )
    return completion.choices[0].message.content


def QnA_chain(content, history, question):

    class QnA(BaseModel):
        summary_title: str
        response: str

    prompt = f"""
    **Reply only in Korean**
    You are a Q&A chatbot.
    Maintain the context of the conversation by referencing the chat history.
    For unknown information, answer by stating that it's unknown.
    Always include sources in the answer. 
    Respond based on the provided content, and if not, issue a warning.
    Include practical examples in the answer.
    For programming-related questions, include code examples.

    summarize chat history into summary_title
    
    <context>
    {content}
    </context>

    <chat history>
    {history}
    </chat history>

    <question>
    {question}
    </question>
    """

    completion = client.beta.chat.completions.parse(
        model="gpt-4o-mini-2024-07-18",
        messages=[
            {"role": "system", "content": prompt},
        ],
        temperature=0.3,
        response_format=QnA,
    )

    # 응답 데이터
    query = completion.choices[0].message.parsed

    # JSON 형태로 추출
    query_json = json.dumps(query.model_dump(), indent=2)
    query_dict = json.loads(query_json)

    # 결과 출력
    return query_dict


def RAG_chain(summary, context, history, question):

    class RAG(BaseModel):
        summary_title: str
        response: str

    prompt = f"""
    **Reply only in Korean**
    You are an official documentation Q&A chatbot.  
    1. Answer questions based on the provided official documentation.  
    2. Cite the source of the information and specify the relevant section of the documentation.  
    3. If a question is not related to the official documentation, inform the user.  
    4. For questions about unknown knowledge, respond with: "Sorry, I don't know."  
    5. Include code in your answers whenever possible.  
    6. Maintain the context of the conversation by referencing the chat history.  
    7. If you believe the current question has been addressed, ask: "Do you have any additional questions?"  
    8. If there are no further questions, proceed to the next step.

    summarize chat history into summary_title
    put answer in response

    <context>
    {summary}
    
    {context}
    </context>

    <chat history>
    {history}
    </chat history>
    
    <question>
    {question}
    </question>
    """

    completion = client.beta.chat.completions.parse(
        model="gpt-4o-mini-2024-07-18",
        messages=[
            {"role": "system", "content": prompt},
        ],
        temperature=0.3,
        response_format=RAG,
    )

    # 응답 데이터
    query = completion.choices[0].message.parsed

    # JSON 형태로 추출
    query_json = json.dumps(query.model_dump(), indent=2)
    query_dict = json.loads(query_json)

    return query_dict

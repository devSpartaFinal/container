import os
import pickle
import openai
from operator import itemgetter
from langchain_openai import ChatOpenAI
from langchain_openai import OpenAIEmbeddings
from langchain_core.runnables import RunnableMap
from langchain_core.prompts import PromptTemplate
from langchain_community.vectorstores import FAISS
from langchain.retrievers import EnsembleRetriever
from langchain.retrievers import MultiQueryRetriever
from langchain_community.retrievers import BM25Retriever
from langchain_core.output_parsers import StrOutputParser


# openai.api_key = os.environ.get("MY_OPENAI_API_KEY")
openai.api_key = os.getenv("OPENAI_API_KEY")
EMBED = OpenAIEmbeddings(model="text-embedding-ada-002", api_key=openai.api_key)


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


def multi_query():
    prompt = PromptTemplate.from_template(
        """
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
    )

    llm = ChatOpenAI(model="gpt-4o-mini", api_key=openai.api_key, temperature=0.1)
    chain = (
        RunnableMap(
            {
                "question": itemgetter("question"),
            }
        )
        | prompt
        | llm
        | StrOutputParser()
    )
    return chain

# 출처 명시 강화
def RAG_chain():
    prompt = PromptTemplate.from_template(
        """
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
    
    <context>
    {context}
    </context>

    <chat history>
    {history}
    </chat history>
    
    <question>
    {question}
    </question>
    """
    )

    llm = ChatOpenAI(model="gpt-4o-mini", api_key=openai.api_key, temperature=0.1)
    chain = (
        RunnableMap(
            {
                "context": itemgetter("context"),
                "history": itemgetter("history"),
                "question": itemgetter("question"),
            }
        )
        | prompt
        | llm
        | StrOutputParser()
    )
    return chain


def officail_rag(title, user_input, memory):
    retriever = get_retriever(title)
    query = multi_query().invoke({"question": user_input})
    context = retriever.invoke(query)
    response = RAG_chain().invoke(
        {"context": context, "question": user_input, "history": memory}
    )
    return response

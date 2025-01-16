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
CLIENT = OpenAI(api_key=openai.api_key)

def summarize_title(user_message):
    prompt = f"""
    answer in Korean, except for essential keywords
    Based on the following content, summarize the session title briefly to capture the user's intent clearly.
    {user_message}
    """

    # OpenAI API 호출
    completion = CLIENT.chat.completions.create(
        model="gpt-4o-mini",  # 사용 모델
        messages=[
            {"role": "user", "content": prompt, "type": "text"},
        ],
    )
    return completion.choices[0].message.content

def QnA_chain():
    prompt = PromptTemplate.from_template(
        """
    **Reply only in Korean**
    You are a Q&A chatbot.
    Maintain the context of the conversation by referencing the chat history.
    For unknown information, answer by stating that it's unknown.
    Always include sources in the answer. 
    Respond based on the provided content, and if not, issue a warning.
    Include practical examples in the answer.
    For programming-related questions, include code examples.
    
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
    )

    llm = ChatOpenAI(model="gpt-4o-mini", api_key=openai.api_key, temperature=0.1)
    chain = (
        RunnableMap(
            {
                "content": itemgetter("content"),
                "history": itemgetter("history"),
                "question": itemgetter("question"),
            }
        )
        | prompt
        | llm
        | StrOutputParser()
    )
    return chain


def summary_chain():

    prompt = PromptTemplate.from_template(
        """
    Yor are summary maker.
    Summarize the following content in an easy-to-understand way.  
    Format the summary in **Markdown**.  

    ### Requirements  
    1. **Reply only in Korean**
    2. **Key Concepts**: Briefly explain the main ideas.  
    3. **Important Terms**: Include key terms with simple definitions.  
    4. **Practical Applications**: Provide examples of real-world use cases.
    5. **Code Snippets**: Format all code snippets using ```code``` blocks.  
    6. **References**: Gather all links mentioned in the text and list them at the end as references.

    <example>
    ## Summary  
    - **Intro** : one point summary

    ### 1. Key Concepts  
    - **Concept 1**: Explanation of the main idea.  
    - **Concept 2**: Explanation of another key point.  

    ### 2. Important Terms  
    - **Term 1**: Simple definition.  
    - **Term 2**: Simple definition.  

    ### 3. Practical Applications  
    - **Example 1**: A description of a real-world use case.  
    - **Example 2**: Another practical application.  

    ### 4. Conclusion 
    - **Outro** : Additional topics to learn

    ### References
    - Source 1
    - Source 2
    - Source 3
    </example>

    <context>
    {content}
    </context> 
    """
    )

    llm = ChatOpenAI(model="gpt-4o-mini", api_key=openai.api_key, temperature=0.1)
    chain = (
        RunnableMap(
            {
                "content": itemgetter("content"),
            }
        )
        | prompt
        | llm
        | StrOutputParser()
    )
    return chain


def user_docs_chain():

    prompt = PromptTemplate.from_template(
        """
    Yor are textbook maker.
    make textbook form the following content in an easy-to-understand way.
    Do not summarize, but restructure it as a textbook, without excessively omitting content.
    Format the summary in **Markdown**.

    ### Requirements  
    1. **Reply only in Korean**
    2. **Key Concepts**: Briefly explain the main ideas.  
    3. **Important Terms**: Include key terms with simple definitions.  
    4. **Practical Applications**: Provide examples of real-world use cases.
    5. **Code Snippets**: Format all code snippets using ```code``` blocks.  
    6. **References**: Gather all links mentioned in the text and list them at the end as references.
    7. Remove any HTML tags, special characters, or symbols that are unrelated to the learning content.
    8. **If the content contains sensitive information about individuals, violent, or inappropriate material, please review it as it may include such information.**

    <user prompt>
    {user_input}
    </user prompt>

    <context>
    {content}
    </context> 
    """
    )

    llm = ChatOpenAI(model="gpt-4o-mini", api_key=openai.api_key, temperature=0.1)
    chain = (
        RunnableMap(
            {
                "content": itemgetter("content"),
                "user_input": itemgetter("user_input"),
            }
        )
        | prompt
        | llm
        | StrOutputParser()
    )
    return chain
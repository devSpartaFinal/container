import os
import json
import requests
from . import llm
import pdfplumber
from .models import *
from bs4 import BeautifulSoup
from django.conf import settings
from rest_framework import status
from django.core.cache import cache
from django.http import JsonResponse
from quizbot.models import Reference
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.parsers import MultiPartParser, FormParser


class RagChatbotView(APIView):

    def get_chat_history(self, chat_id, user):
        """ChatHistory 조회 유틸리티 함수"""
        return ChatHistory.objects.filter(id=chat_id, user=user).first()

    def generate_ids(self, chat_history):
        """새로운 응답 ID를 생성"""
        if chat_history.last_response_user:
            id_user = chat_history.last_response_user["id_user"] + 1
        else:
            id_user = 1

        if chat_history.last_response_ai:
            id_ai = chat_history.last_response_ai["id_ai"] + 1
        else:
            id_ai = 1

        return id_user, id_ai

    def get(self, request, chat_id):
        try:
            user = request.user
            cache_key = f"{user.id}:{chat_id}:chathistory"
            if cache.get(cache_key):
                chat_history = cache.get(cache_key)
                print("캐시호출")
            else:
                chat_history = self.get_chat_history(chat_id, user)
            return Response(
                {
                    "id": chat_history.id,
                    "title": chat_history.title,
                    "content_info": chat_history.content_info,
                    "chatlog": chat_history.conversation,
                },
                status=status.HTTP_200_OK,
            )
        except ChatHistory.DoesNotExist:
            return Response(
                {"error": "ChatHistory not found"}, status=status.HTTP_404_NOT_FOUND
            )

    def post(self, request, chat_id=False):
        # 사용자 정보
        user = request.user
        content = ""
        # ChatHistory 조회 또는 생성
        try:
            cache_key = f"{user.id}:{chat_id}:chathistory"
            chat_history = cache.get(cache_key)
            print("캐시 호출")
        except:
            chat_history = self.get_chat_history(chat_id, user) if chat_id else None

        if chat_history:
            # 기존 채팅 기반 처리
            memory = chat_history.conversation
            category = chat_history.content_info["category"]
            user_input = request.data["user_input"]

            if category == "OFFICIAL_DOCS":
                title = chat_history.content_info["title"]
                title_no = chat_history.content_info["title_no"]
                cache_key = f"{user.id}:{category}:{title_no}:summary"
                summary = cache.get(cache_key)
                if not summary:
                    summary = ""
                    print("요약 불러오기 실패: 이어하기")
                retriever = llm.get_retriever(title)
                multi_query = llm.multi_query_llm(user_input)
                contents = []
                for query in multi_query:
                    contents.append(retriever.invoke(query))
                result = llm.RAG_chain(summary, contents, memory, user_input)

            elif category == "YOUTUBE":
                url = request.data["URL"]
                cache_key = url
                script = cache.get(cache_key)
                content = script
                if not script:
                    try:
                        content = llm.YoutubeScript(url)
                        script = cache.set(cache_key, content)
                    except:
                        return Response(
                            {"error": "URL을 확인해 주세요."},
                            status=status.HTTP_404_NOT_FOUND,
                        )
                result = llm.QnA_chain(content, memory, user_input)
            else:
                content = chat_history.content
                result = llm.QnA_chain(content, memory, user_input)
        else:
            # 새로운 ChatHistory 생성
            category = request.data["category"]
            title_no = request.data.get("title_no", "")
            user_input = request.data["user_input"]

            if category == "OFFICIAL_DOCS":
                memory = [{"SYSTEM": "init conversation"}]
                documents_cache = cache.get("documents")
                if documents_cache:
                    print("공식문서 케시 호출")
                    documents = documents_cache.filter(title_no=title_no).first()
                else:
                    documents = Documents.objects.filter(title_no=title_no).first()
                cache_key = f"{user.id}:{category}:{title_no}:summary"
                summary = cache.get(cache_key)
                if not summary:
                    summary = ""
                    print("요약 불러오기 실패: 생성")
                title = documents.title
                retriever = llm.get_retriever(title)
                multi_query = llm.multi_query_llm(user_input)
                contents = []
                for query in multi_query:
                    contents.append(retriever.invoke(query))
                result = llm.RAG_chain(summary, contents, memory, user_input)
                content_info = {
                    "category": category,
                    "title_no": title_no,
                    "title": title,
                }
            elif category == "YOUTUBE":
                url = request.data["URL"]
                cache_key = url
                script = cache.get(cache_key)
                content = script
                if not script:
                    try:
                        content = llm.YoutubeScript(url)
                        script = cache.set(cache_key, content)
                    except:
                        return Response(
                            {"error": "URL을 확인해 주세요."},
                            status=status.HTTP_404_NOT_FOUND,
                        )
                memory = ""
                result = llm.QnA_chain(content, memory, user_input)
                content_info = {"category": category, "title_no": title_no}
                memory = [{"SYSTEM": "init conversation"}]
            else:
                reference_cache = cache.get("reference")
                if reference_cache:
                    print("레퍼런스 케시 호출")
                    reference = reference_cache.filter(
                        category=category, title_no=title_no
                    ).first()
                else:
                    reference = Reference.objects.filter(
                        category=category, title_no=title_no
                    ).first()
                if reference:
                    content = reference.content
                else:
                    content = "자료 읽기에 실패하였습니다."
                memory = ""
                result = llm.QnA_chain(content, memory, user_input)
                content_info = {"category": category, "title_no": title_no}
                memory = [{"SYSTEM": "init conversation"}]

            chat_history = ChatHistory.objects.create(
                user=user,
                conversation=memory,
                content_info=content_info,
                content=content,
            )

        response = result["response"]
        title = result["summary_title"]

        # 응답 ID 생성 및 대화 기록 업데이트
        id_user, id_ai = self.generate_ids(chat_history)

        last_response_user = {"id_user": id_user, "USER": user_input}
        last_response_ai = {"id_ai": id_ai, "AI": response}

        memory.extend([last_response_user, last_response_ai])

        # ChatHistory 저장
        chat_history.title = title
        chat_history.conversation = memory
        chat_history.last_response_user = last_response_user
        chat_history.last_response_ai = last_response_ai
        chat_history.save()
        cache_key = f"{user.id}:{chat_history.id}:chathistory"
        cache.set(cache_key, chat_history, timeout=60 * 60)

        chathistory_key = f"{user.id}:chathistory_keys"
        id = chat_history.id
        if not cache.get(chathistory_key):
            cache.set(chathistory_key, [id], timeout=60 * 60)
        else:
            keys = cache.get(chathistory_key)
            if id not in keys:
                keys.append(id)
            cache.set(chathistory_key, keys, timeout=60 * 60)

        return Response(
            {
                "id": chat_history.id,
                "AI": response,
            },
            status=status.HTTP_200_OK,
        )

    def delete(self, request, chat_id):
        try:
            # 사용자 정보
            user = request.user
            # 특정 사용자 ID에 해당하는 ChatHistory 삭제
            ChatHistory.objects.filter(id=chat_id, user=user).delete()
            return JsonResponse({"message": f"{chat_id} 삭제"}, status=200)
        except Exception as e:
            return JsonResponse({"error": str(e)}, status=500)


class ChatSessionView(APIView):

    def get(self, request):
        try:
            chats = ChatHistory.objects.filter(user=request.user).values(
                "id", "title", "content_info", "conversation"
            )
            return Response(
                {"chatsession": list(chats)},
                status=status.HTTP_200_OK,
            )
        except ChatHistory.DoesNotExist:
            return Response(
                {"error": "ChatHistory not found"}, status=status.HTTP_404_NOT_FOUND
            )


class SummaryView(APIView):
    def get(self, request):
        category = request.query_params.get("category")
        title_no = request.query_params.get("title_no")
        if category == "OFFICIAL_DOCS":
            user = request.user
            cache_key = f"{user.id}:{category}:{title_no}:summary"
            keyword = request.query_params.get("keyword")
            documents_cache = cache.get("documents")
            if documents_cache:
                print("공식문서 케시 호출")
                documents = documents_cache.filter(title_no=title_no).first()
            else:
                documents = Documents.objects.filter(title_no=title_no).first()
            title = documents.title
            retriever = llm.get_retriever(title)
            multi_query = llm.multi_query_llm(keyword)
            contents = []
            for query in multi_query:
                contents.append(retriever.invoke(query))
            response = llm.summary(contents, keyword)
            cache.set(cache_key, response, timeout=60 * 60 * 24)
            
        elif category == "YOUTUBE":
            url = request.data["URL"]
            summary_key = f"{url}:summary"
            response = cache.get(summary_key)
            if not response:
                cache_key = url
                script = cache.get(cache_key)
                content = script
                if not script:
                    try:
                        content = llm.YoutubeScript(url)
                        script = cache.set(cache_key, content)
                    except:
                        return Response(
                            {"error": "URL을 확인해 주세요."},
                            status=status.HTTP_404_NOT_FOUND,
                        )
                response = llm.summary(content, "")
                cache.set(summary_key, response, timeout=60 * 60 * 24)

        else:
            cache_key = f"{category}:{title_no}:summary"
            response = cache.get(cache_key)
            if not response:
                reference_cache = cache.get("reference")
                if reference_cache:
                    print("레퍼런스 케시 호출")
                    reference = reference_cache.filter(
                        category=category, title_no=title_no
                    ).first()
                else:
                    reference = Reference.objects.filter(
                        category=category, title_no=title_no
                    ).first()
                if not reference:
                    response = "자료 읽기에 실패하였습니다."
                else:
                    content = reference.content
                    response = llm.summary(content, "")
                    cache.set(cache_key, response, timeout=60 * 60 * 24)

        return Response(
            {"result": response},
            status=status.HTTP_200_OK,
        )

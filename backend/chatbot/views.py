from . import llm
from .models import ChatHistory, Documents
from django.conf import settings
from rest_framework import status
from django.core.cache import cache
from django.http import JsonResponse
from quizbot.models import Reference
from rest_framework.views import APIView
from rest_framework.response import Response
import threading
import time
from django.utils.timezone import now


from concurrent.futures import ThreadPoolExecutor, TimeoutError


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

    def update_status(self, chat_history, start_time):
        while True:
            elapsed_time = (now() - start_time).total_seconds()
            if chat_history.status == "completed":
                break
            elif elapsed_time > 30:
                chat_history.status = "failed"
                chat_history.save()
                break
            elif elapsed_time > 10:
                chat_history.status = "delayed"
                chat_history.save()
            else:
                chat_history.status = "generating"
                chat_history.save()

            time.sleep(5)

        chat_history.save()

    def generate_response(
        self, request, chat_history, user_input, category, title_no, start_time
    ):
        """응답 생성 로직 (각 category에 따라 다르게 처리)"""
        content = ""
        title = ""
        if category == "OFFICIAL_DOCS":
            # title 및 title_no 추출
            title = chat_history.content_info.get("title", "")
            if not title:
                documents_cache = cache.get("documents")
                documents = (
                    documents_cache.filter(title_no=title_no).first()
                    if documents_cache
                    else Documents.objects.filter(title_no=title_no).first()
                )
                if not documents:
                    return Response(
                        {"error": "해당 문서가 존재하지 않습니다."},
                        status=status.HTTP_404_NOT_FOUND,
                    )
                title = documents.title  # 제목 추출
                chat_history.content_info["title"] = title  # title 정보 갱신
            cache_key = f"{request.user.id}:{category}:{title_no}:summary"
            summary = cache.get(cache_key)
            if not summary:
                summary = ""
            retriever = llm.get_retriever(title)
            multi_query = llm.multi_query_llm(user_input)
            contents = []
            for query in multi_query:
                contents.append(retriever.invoke(query))
            result = llm.RAG_chain(
                summary, contents, chat_history.conversation, user_input
            )

        elif category == "YOUTUBE":
            # 유튜브 영상에서 title 추출
            url = request.data.get("URL", "")
            if not url:
                return Response(
                    {"error": "URL이 필요합니다."},
                    status=status.HTTP_400_BAD_REQUEST,
                )
            cache_key = url
            script = cache.get(cache_key)
            content = script
            if not script:
                try:
                    content = llm.YoutubeScript(url)
                    title = llm.get_video_title(url)  # 유튜브 비디오 제목 추출
                    cache.set(cache_key, content)
                except Exception as e:
                    return Response(
                        {"error": f"영상 정보 조회 실패: {str(e)}"},
                        status=status.HTTP_404_NOT_FOUND,
                    )
            result = llm.QnA_chain(content, chat_history.conversation, user_input)

        else:
            # Documents 또는 Reference에서 title 및 content 추출
            reference_cache = cache.get("reference")
            reference = (
                reference_cache.filter(category=category, title_no=title_no).first()
                if reference_cache
                else Reference.objects.filter(
                    category=category, title_no=title_no
                ).first()
            )
            if reference:
                content = reference.content
                title = reference.title  # title 추출
            else:
                content = "자료 읽기에 실패하였습니다."
                title = "자료 없음"  # title 설정

            result = llm.QnA_chain(content, chat_history.conversation, user_input)

        return result

    def post(self, request, chat_id=False):
        user = request.user
        content = ""

        try:
            cache_key = f"{user.id}:{chat_id}:chathistory"
            chat_history = cache.get(cache_key)
            if not chat_history:
                chat_history = self.get_chat_history(chat_id, user) if chat_id else None
            print("캐시 호출")
        except Exception as e:
            return Response(
                {"error": f"채팅 기록을 불러오는 데 실패했습니다: {str(e)}"},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR,
            )

        if chat_history:
            memory = chat_history.conversation
            category = chat_history.content_info.get("category", "")
            user_input = request.data.get("user_input", "")

            title = chat_history.content_info.get("title", "")
            title_no = chat_history.content_info.get("title_no", "")

            chat_history.status = "generating"
            chat_history.save()

            start_time = now()
            threading.Thread(
                target=self.update_status, args=(chat_history, start_time)
            ).start()

            # 타임아웃을 설정하여 응답 생성
            with ThreadPoolExecutor() as executor:
                future = executor.submit(
                    self.generate_response,
                    request,
                    chat_history,
                    user_input,
                    category,
                    title_no,
                    start_time,
                )
                try:
                    result = future.result(timeout=30)  # 30초 타임아웃 설정
                except TimeoutError:
                    chat_history.status = "failed"
                    chat_history.save()
                    return Response(
                        {"error": "응답 생성이 30초를 초과하여 실패했습니다."},
                        status=status.HTTP_504_GATEWAY_TIMEOUT,
                    )

        else:
            category = request.data.get("category", "")
            title_no = request.data.get("title_no", "")
            user_input = request.data.get("user_input", "")

            title = ""
            if category == "OFFICIAL_DOCS":
                documents_cache = cache.get("documents")
                documents = (
                    documents_cache.filter(title_no=title_no).first()
                    if documents_cache
                    else Documents.objects.filter(title_no=title_no).first()
                )
                if not documents:
                    return Response(
                        {"error": "해당 문서가 존재하지 않습니다."},
                        status=status.HTTP_404_NOT_FOUND,
                    )
                title = documents.title

            chat_history = ChatHistory.objects.create(
                user=user,
                conversation=[{"SYSTEM": "init conversation"}],
                content_info={
                    "category": category,
                    "title_no": title_no,
                    "title": title,
                },
                content="",
                status="generating",
            )

            start_time = now()
            threading.Thread(
                target=self.update_status, args=(chat_history, start_time)
            ).start()

            with ThreadPoolExecutor() as executor:
                future = executor.submit(
                    self.generate_response,
                    request,
                    chat_history,
                    user_input,
                    category,
                    title_no,
                    start_time,
                )
                try:
                    result = future.result(timeout=30)
                except TimeoutError:
                    chat_history.status = "failed"
                    chat_history.save()
                    return Response(
                        {"error": "응답 생성이 30초를 초과하여 실패했습니다."},
                        status=status.HTTP_504_GATEWAY_TIMEOUT,
                    )

        chat_history.status = "completed"
        title = result["summary_title"]

        id_user, id_ai = self.generate_ids(chat_history)

        last_response_user = {"id_user": id_user, "USER": user_input}
        last_response_ai = {"id_ai": id_ai, "AI": result["response"]}

        memory = chat_history.conversation
        memory.extend([last_response_user, last_response_ai])

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
                "AI": result["response"],
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
        url = request.query_params.get("URL")
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

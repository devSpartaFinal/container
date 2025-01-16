import os
from django.conf import settings
from django.http import JsonResponse
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework.parsers import MultiPartParser, FormParser
from .models import *
from .serializers import UserDocsSerializer
from .pre_processing import *
from .youtube import extract_script
import json
import pdfplumber
import requests
from bs4 import BeautifulSoup
from . import rag, llm, test
from quizbot.models import Reference



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
        # ChatHistory 조회 또는 생성
        chat_history = self.get_chat_history(chat_id, user) if chat_id else None

        if chat_history:
            # 기존 채팅 기반 처리
            memory = chat_history.conversation
            category = chat_history.content_info["category"]
            user_input = request.data["user_input"]

            if category == "OFFICIAL_DOCS":
                title = chat_history.content_info["title"]
                response = rag.officail_rag(title, user_input, memory)
            else:
                content = chat_history.content
                chain = llm.QnA_chain()
                response = chain.invoke(
                    {"history": memory, "question": user_input, "content": content}
                )
        else:
            # 새로운 ChatHistory 생성
            category = request.data["category"]
            title_no = request.data["title_no"]
            user_input = request.data["user_input"]

            if category == "OFFICIAL_DOCS":
                memory = [{"SYSTEM": "init conversation"}]
                documents = Documents.objects.filter(title_no=title_no).first()
                title = documents.title
                response = rag.officail_rag(title, user_input, memory)
                content_info = {
                    "category": category,
                    "title_no": title_no,
                    "title": title,
                }
            else:
                reference = Reference.objects.filter(
                    category=category, title_no=title_no
                ).first()  # 첫 번째 결과만 가져옴

                # reference가 None이 아니면 content를 사용
                if reference:
                    content = reference.content
                else:
                    content = "자료 읽기에 실패하였습니다."
                chain = llm.QnA_chain()
                response = chain.invoke(
                    {"history": [], "question": user_input, "content": content}
                )
                content_info = {"category": category, "title_no": title_no}
                memory = [{"SYSTEM": "init conversation"}]

            chat_history = ChatHistory.objects.create(
                user=user,
                conversation=memory,
                content_info=content_info,
                content=content,
            )

        # 응답 ID 생성 및 대화 기록 업데이트
        id_user, id_ai = self.generate_ids(chat_history)

        last_response_user = {"id_user": id_user, "USER": user_input}
        last_response_ai = {"id_ai": id_ai, "AI": response}

        memory.extend([last_response_user, last_response_ai])

        # ChatHistory 저장
        chat_history.title = llm.summarize_title(memory)
        chat_history.conversation = memory
        chat_history.last_response_user = last_response_user
        chat_history.last_response_ai = last_response_ai
        chat_history.save()

        return Response(
            {
                "id": chat_history.id,
                "AI": response,
                # "multi_query": multi_query if category == "Official-Docs" else None,
                # "Retriever": context if category == "Official-Docs" else None,
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
        keyword = request.query_params.get("keyword")

        if category == "OFFICIAL_DOCS":
            documents = Documents.objects.filter(title_no=title_no).first()
            title = documents.title
            retriever = test.get_retriever(title)
            multi_query = test.multi_query_llm(keyword)
            contents = []
            for query in multi_query:
                contents.append(retriever.invoke(query))
            response = test.summary(contents, keyword)
 
        else : 
            reference = Reference.objects.filter(
                category=category, title_no=title_no
            ).first()
            if reference:
                content = reference.content
            else:
                content = "자료 읽기에 실패하였습니다."
            chain = llm.summary_chain()
            response = chain.invoke({"content": content})

        return Response(
            {"result": response},
            status=status.HTTP_200_OK,
        )


class UserDocsView(APIView):
    parser_classes = [MultiPartParser, FormParser]

    def post(self, request):
        # JSON 헤더인 경우
        if request.content_type == "application/json":
            data = json.loads(request.body)
            url = data.get("url")
            title = data.get('title')
            if url:
                content = read_url(url)
                content = preprocess_text(content)
                content = llm.user_docs_chain().invoke(
                    {"content": content, "user_input": ""}
                )
                UserDocs.objects.create(user=request.user,
                    title=title, url=url, content=content
                )  # DB 저장
                return JsonResponse(
                    {"status": "success", "message": "Data processed successfully"}
                )
            return JsonResponse(
                {"status": "error", "message": "URL is required for JSON request"},
                status=400,
            )

        serializer = UserDocsSerializer(data=request.data)

        if serializer.is_valid():
            file = serializer.validated_data.get("file")
            url = serializer.validated_data.get("url")
            if url:
                content = read_url(url)
                content = preprocess_text(content)  # 텍스트 전처리 추가
            elif file and file.name.endswith(".txt"):
                content = read_text_file(file)
                content = preprocess_text(content)  # 텍스트 전처리 추가
            elif file and file.name.endswith(".pdf"):
                content = read_pdf(file)
                content = preprocess_text(content)  # 텍스트 전처리 추가
            else:
                return JsonResponse(
                    {"status": "error", "message": "Invalid file type or missing URL"},
                    status=400,
                )
            content = llm.user_docs_chain().invoke(
                    {"content": content, "user_input": ""}
            )
            serializer.save(user_id=request.user.id)
            serializer.save(content=content)
            return JsonResponse(
                {
                    "status": "success",
                    "message": "Data successfully saved to user_input.json",
                }
            )
        return JsonResponse({"status": "error", "message": "Invalid data"}, status=400)

    def get(self, request):
        # 업로드된 모든 파일 목록을 조회
        uploads = UserDocs.objects.all()
        file_serializer = UserDocsSerializer(uploads, many=True)
        return Response(file_serializer.data, status=status.HTTP_200_OK)


class DjangoView(APIView):
    def read_url(self, url):
        try:
            response = requests.get(url)
            response.raise_for_status()  # HTTP 오류 발생 시 예외 발생
            soup = BeautifulSoup(response.text, "html.parser")

            # <div class="highlight"> 안의 <pre> 태그 추출 및 원본에 삽입
            code_blocks = soup.find_all("div", class_="highlight")
            for block in code_blocks:
                pre_tag = block.find("pre")
                if pre_tag:
                    code_content = pre_tag.get_text()  # 코드 내용만 텍스트로 추출
                    new_tag = soup.new_tag("code_snipet")
                    new_tag.string = code_content
                    block.replace_with(new_tag)

            # 변경된 HTML 반환
            modified_html = soup.prettify()
            return modified_html

        except requests.exceptions.RequestException as e:
            print(f"요청 중 오류 발생: {e}")
            return None  # 오류가 발생하면 None 반환

    def get(self, request):
        # BASE_ROOT에 저장된 Django.html 파일 경로
        base_path = os.path.join(settings.BASE_DIR, "Django.html")
        base_url = "https://docs.djangoproject.com/en/5.1/"
        # HTML 파일 읽기
        with open(base_path, "r", encoding="utf-8") as file:
            html_content = file.read()

        # BeautifulSoup으로 HTML 파싱
        soup = BeautifulSoup(html_content, "html.parser")
        links = soup.find_all("a", class_="reference internal")  # 내부 링크 필터링

        # URL 처리 및 DB 저장
        for link in links:
            url = link.get("href")
            if base_url in url and "#" not in url:
                try:
                    content = self.read_url(url)
                    content = preprocess_text(content)

                    # DB에 저장
                    Documents.objects.create(
                        category="Official-Docs",
                        title="Django",
                        title_no=1,
                        url=url,
                        content=content,
                    )
                except Exception as e:
                    print(f"Error processing {url}: {e}")

        return JsonResponse(
            {"status": "success", "message": "Data updated successfully"}
        )


class Django_DRFView(APIView):
    def read_url(self, url):
        try:
            response = requests.get(url)
            response.raise_for_status()  # HTTP 오류 발생 시 예외 발생
            soup = BeautifulSoup(response.text, "html.parser")

            # <div class="prettyprint well"> 안의 <pre> 태그 추출 및 원본에 삽입
            code_blocks = soup.find_all("pre")
            for block in code_blocks:
                # <code> 태그 안의 모든 내용을 추출
                code_tag = block.find("code")
                if code_tag:
                    code_content = code_tag.get_text()
                    new_tag = soup.new_tag("code_snipet")
                    new_tag.string = code_content
                    block.replace_with(new_tag)

            # 변경된 HTML 반환
            modified_html = soup.prettify()
            return modified_html

        except requests.exceptions.RequestException as e:
            print(f"요청 중 오류 발생: {e}")
            return None  # 오류가 발생하면 None 반환

    def get(self, request):
        # BASE_ROOT에 저장된 Django.html 파일 경로
        base_path = os.path.join(settings.BASE_DIR, "Django_DRF.html")
        base_url = "https://www.django-rest-framework.org/"
        # HTML 파일 읽기
        with open(base_path, "r", encoding="utf-8") as file:
            html_content = file.read()

        # BeautifulSoup으로 HTML 파싱
        soup = BeautifulSoup(html_content, "html.parser")
        links = soup.find_all("a", href=lambda href: href and base_url in href)

        # URL 처리 및 DB 저장
        for link in links:
            url = link.get("href")
            try:
                content = self.read_url(url)
                content = preprocess_text(content)

                # DB에 저장
                Documents.objects.create(
                    category="Official-Docs",
                    title="Django_DRF",
                    title_no=2,
                    url=url,
                    content=content,
                )
            except Exception as e:
                print(f"Error processing {url}: {e}")

        return JsonResponse(
            {"status": "success", "message": "Data updated successfully"}
        )


class ReactView(APIView):
    def read_url(self, url):
        try:
            response = requests.get(url)
            response.raise_for_status()  # HTTP 오류 발생 시 예외 발생
            soup = BeautifulSoup(response.text, "html.parser")

            # 1. <pre> 태그 처리
            code_blocks = soup.find_all("pre")
            for block in code_blocks:
                # <code> 태그 안의 모든 내용을 추출
                code_tag = block.find("code")
                if code_tag:
                    code_content = code_tag.get_text()
                    new_tag = soup.new_tag("code_snipet")
                    new_tag.string = code_content
                    block.replace_with(new_tag)

            # 2. <div> 태그 처리 (지정된 속성을 가진 경우)
            div_blocks = soup.find_all(
                "div",
                class_="px-8 pt-4 pb-6 text-primary-dark dark:text-primary-dark font-mono text-code whitespace-pre overflow-x-scroll",
            )
            for block in div_blocks:
                if (
                    block.has_attr("translate") and block["translate"] == "no"
                ):  # translate="no" 속성 확인
                    code_content = block.get_text(strip=True)  # 텍스트 내용만 추출
                    new_tag = soup.new_tag("code_snipet")
                    new_tag.string = code_content
                    block.replace_with(new_tag)

            # 변경된 HTML 반환
            modified_html = soup.prettify()
            return modified_html

        except requests.exceptions.RequestException as e:
            print(f"요청 중 오류 발생: {e}")
            return None  # 오류가 발생하면 None 반환

    def get(self, request):
        # BASE_ROOT에 저장된 Django.html 파일 경로
        base_path = os.path.join(settings.BASE_DIR, "React.html")
        base_url = "https://react.dev/"
        # HTML 파일 읽기
        with open(base_path, "r", encoding="utf-8") as file:
            html_content = file.read()

        # BeautifulSoup으로 HTML 파싱
        soup = BeautifulSoup(html_content, "html.parser")
        links = soup.find_all("a", href=lambda href: href and base_url in href)

        # URL 처리 및 DB 저장
        for link in links:
            url = link.get("href")
            try:
                content = self.read_url(url)
                content = preprocess_text(content)

                # DB에 저장
                Documents.objects.create(
                    category="Official-Docs",
                    title="React",
                    title_no=3,
                    url=url,
                    content=content,
                )
            except Exception as e:
                print(f"Error processing {url}: {e}")

        return JsonResponse(
            {"status": "success", "message": "Data updated successfully"}
        )

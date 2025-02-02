import json
from . import llm
from .models import Quiz, Question, Choice, Reference
from chatbot.llm import get_retriever, multi_query_llm, summary, YoutubeScript
from .serializers import QuizSerializer
from django.conf import settings
from rest_framework import status
from django.core.cache import cache
from chatbot.models import Documents
from rest_framework.views import APIView
from rest_framework.response import Response


class QuizAPIView(APIView):
    def get(self, request, quiz_id):
        try:
            quiz = Quiz.objects.prefetch_related("questions__choices").get(
                id=quiz_id, user=request.user
            )
            questions = [
                {
                    "number": question.number,
                    "content": question.content,
                    "code_snippets": question.code_snippets,
                    "answer_type": question.answer_type,
                    "choices": [
                        {"number": choice.number, "content": choice.content}
                        for choice in question.choices.all()
                    ],
                }
                for question in quiz.questions.all()
            ]
            return Response(
                {
                    "id": quiz.id,
                    "title": quiz.title,
                    "questions": questions,
                },
                status=status.HTTP_200_OK,
            )
        except Quiz.DoesNotExist:
            return Response(
                {"error": "Quiz not found"}, status=status.HTTP_404_NOT_FOUND
            )

    def post(self, request, quiz_id):
        try:
            quiz = Quiz.objects.get(id=quiz_id, user=request.user)
            answers = request.data.get("answers", [])
            total_questions = quiz.questions.count()
            correct_answers = 0
            details = []
            for answer in answers:
                question_number = answer.get("q_number")
                choice_number = answer.get("c_number")
                # 해당 퀴즈의 특정 질문 가져오기
                question = Question.objects.get(number=question_number, quiz=quiz)
                # 사용자가 선택한 보기 가져오기
                selected_choice = Choice.objects.get(
                    number=choice_number, question=question
                )
                # 정답 여부 확인
                is_correct = selected_choice.is_correct
                if is_correct:
                    correct_answers += 1
                # user_answer 필드 업데이트
                question.user_answer = {
                    "selected_choice": {
                        "number": selected_choice.number,
                        "content": selected_choice.content,
                        "is_correct": selected_choice.is_correct,
                    }
                }
                question.save()
                # 응답 상세 기록
                details.append(
                    {
                        "question_number": question_number,
                        "is_correct": is_correct,
                        "user_answer": question.user_answer,
                    }
                )
            score = (correct_answers / total_questions) * 100
            report = {
                "quiz_id": quiz.id,
                "correct_answers": correct_answers,
                "total_questions": total_questions,
                "score": score,
            }
            # user_answer 필드 업데이트
            quiz.result = report
            quiz.save()
            return Response(report, status=status.HTTP_200_OK)
        except (Quiz.DoesNotExist, Question.DoesNotExist, Choice.DoesNotExist):
            return Response(
                {"error": "Invalid data provided"}, status=status.HTTP_400_BAD_REQUEST
            )


class QuizRequestView(APIView):
    def get(self, request):
        queryset = Quiz.objects.filter(user=request.user)
        serializer = QuizSerializer(queryset, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request):
        try:
            category = request.data["category"]
            title_no = request.data.get("title_no", "")

            # Content 가져오기
            if category == "OFFICIAL_DOCS":
                keyword = request.data["keyword"]
                documents = cache.get("documents", None)
                if documents:
                    documents = documents.filter(title_no=title_no).first()
                else:
                    documents = Documents.objects.filter(title_no=title_no).first()

                if not documents:
                    return Response({"error": "문서를 찾을 수 없습니다."}, status=status.HTTP_404_NOT_FOUND)

                retriever = get_retriever(documents.title)
                multi_query = multi_query_llm(keyword)
                contents = [retriever.invoke(query) for query in multi_query]
                content = summary(contents, keyword)

            elif category == "YOUTUBE":
                url = request.data["URL"]
                script = cache.get(url)
                if not script:
                    try:
                        script = YoutubeScript(url)
                        cache.set(url, script)
                    except:
                        return Response({"error": "URL 또는 영상길이를 확인해 주세요."}, status=status.HTTP_404_NOT_FOUND)
                content = script

            else:
                reference = cache.get("reference", None)
                if reference:
                    reference = reference.filter(category=category, title_no=title_no).first()
                else:
                    reference = Reference.objects.filter(category=category, title_no=title_no).first()

                if not reference:
                    return Response({"error": "Reference not found"}, status=status.HTTP_404_NOT_FOUND)
                
                content = reference.content

            # LLM으로 퀴즈 생성
            response = llm.quizz_chain(content, request.data)
            response_dict = json.loads(response)

            # 시리얼라이저를 사용해 저장
            quiz_data = {
                "user": request.user.id,
                "title": response_dict["title"],
                "description": response_dict["description"],
                "questions": response_dict["questions"],
            }

            serializer = QuizSerializer(data=quiz_data)
            if serializer.is_valid():
                quiz = serializer.save(user=request.user)
                return Response(
                    {"detail": "문제가 생성되었습니다.", "id": quiz.id, "questions": response_dict["questions"]},
                    status=status.HTTP_201_CREATED,
                )
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

        except Reference.DoesNotExist:
            return Response({"error": "Reference not found"}, status=status.HTTP_404_NOT_FOUND)

    def delete(self, request):
        try:
            title = request.data.get("title")
            quiz = Quiz.objects.filter(title=title).first()
            if quiz:
                quiz.delete()
                return Response(
                    {"detail": f"'{title}' 퀴즈를 삭제했습니다."},
                    status=status.HTTP_200_OK,
                )
            return Response(
                {"error": "Quiz not found."}, status=status.HTTP_404_NOT_FOUND
            )
        except Exception as e:
            return Response(
                {"error": str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR
            )


class QuizResultView(APIView):
    def get(self, request, quiz_id):
        try:
            feedback_input = {}
            questions = []
            # Quiz 가져오기
            quiz = Quiz.objects.prefetch_related("questions__choices").get(
                id=quiz_id, user=request.user
            )
            result = quiz.result  # Quiz의 결과 JSONField
            questions_queryset = quiz.questions.all()
            for question in questions_queryset:
                user_answer = question.user_answer  # JSONField에서 사용자 답변 가져오기
                data = {
                    "question": {
                        "number": question.number,
                        "content": question.content,
                        "answer_type": question.answer_type,
                    },
                    "choices": [
                        {
                            "number": choice.number,
                            "content": choice.content,
                            "is_correct": choice.is_correct,
                        }
                        for choice in question.choices.all()
                    ],
                    "user_answer": user_answer,  # 사용자 답변 포함
                }
                questions.append(data)
            feedback_input["title"] = quiz.title
            feedback_input["description"] = quiz.description
            feedback_input["result"] = result
            feedback_input["questions"] = questions
            chain = llm.total_feedback_chain()
            feedback = json.loads(chain.invoke(feedback_input))
            return Response(
                feedback,
                status=status.HTTP_200_OK,
            )
        except Quiz.DoesNotExist:
            return Response(
                {"error": "Quiz not found"}, status=status.HTTP_404_NOT_FOUND
            )


class TotalFeedbackView(APIView):
    def get(self, request, quiz_id):
        try:
            chain = llm.individual_feedback_chain()
            feedback_output = []
            # Quiz 가져오기
            quiz = Quiz.objects.prefetch_related("questions__choices").get(
                id=quiz_id, user=request.user
            )
            questions_queryset = quiz.questions.all()
            for question in questions_queryset:
                user_answer = question.user_answer  # JSONField에서 사용자 답변 가져오기
                data = {
                    "question": {
                        "number": question.number,
                        "content": question.content,
                        "answer_type": question.answer_type,
                    },
                    "choice": [
                        {
                            "number": choice.number,
                            "content": choice.content,
                            "is_correct": choice.is_correct,
                        }
                        for choice in question.choices.all()
                    ],
                    "user_answer": user_answer,  # 사용자 답변
                }
                # 개별 질문에 대한 체인 호출
                feedback = json.loads(chain.invoke(data))
                data["feedback"] = feedback
                feedback_output.append(data)
                # 개별 피드백 DB의 feedback 컬럼에 저장
                question.feedback = feedback
                question.save()
            return Response(
                feedback_output,
                status=status.HTTP_200_OK,
            )
        except Quiz.DoesNotExist:
            return Response(
                {"error": "Quiz not found"}, status=status.HTTP_404_NOT_FOUND
            )

class FeedbackGetView(APIView):
    def get(self, request, quiz_id):
        try:
            # 퀴즈 가져오기
            quiz = Quiz.objects.prefetch_related("questions__choices").get(
                id=quiz_id, user=request.user
            )
            feedback_output = []
            questions_queryset = quiz.questions.all()

            for question in questions_queryset:
                user_answer = question.user_answer  # JSONField에서 사용자 답변 가져오기
                data = {
                    "question": {
                        "number": question.number,
                        "content": question.content,
                        "answer_type": question.answer_type,
                    },
                    "choice": [
                        {
                            "number": choice.number,
                            "content": choice.content,
                            "is_correct": choice.is_correct,
                        }
                        for choice in question.choices.all()
                    ],
                    "user_answer": user_answer,  # 사용자 답변
                    "feedback": question.feedback  # 저장된 피드백 가져오기
                }
                feedback_output.append(data)

            return Response(
                feedback_output,
                status=status.HTTP_200_OK,
            )
        except Quiz.DoesNotExist:
            return Response(
                {"error": "Quiz not found"}, status=status.HTTP_404_NOT_FOUND
            )
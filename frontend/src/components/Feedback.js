import React, { useState, useEffect } from "react";
import { fetchQuizRequest, fetchfeedbackDetails, deleteQuizRequest } from "../apiFeedbackRequest";
import {
  FeedbackContainer,
  FeedbackPanel,
  QuizListPanel,
  FeedbackTitle,
  FeedbackDetails,
  SpinnerContainer,
  Notice,
} from "../styled/FeedbackStyles";
import "./app.css";
import { AiOutlineClose } from "react-icons/ai";

const Feedback = () => {
  const [quizList, setQuizList] = useState([]);
  const [selectedQuizId, setSelectedQuizId] = useState(null);
  const [feedbackDetails, setFeedbackDetails] = useState(null);
  const [error, setError] = useState(null);
  const [loading, setLoading] = useState(false); // 로딩 상태 추가

  // 퀴즈 리스트 가져오기
  useEffect(() => {
    const loadQuizList = async () => {
      try {
        const data = await fetchQuizRequest();
        data.sort((a, b) => a.id -b.id);
        setQuizList(data);
        setError(null); // 에러 초기화
      } catch (error) {
        setError("Failed to fetch quiz list.");
        console.error(error);
      }
    };
    loadQuizList();
  }, []);

  // 선택된 퀴즈의 세부 정보 가져오기
  const handleQuizSelect = async (quizId) => {
    setLoading(true); // 로딩 상태 시작
    setSelectedQuizId(quizId);
    try {
      const data = await fetchfeedbackDetails(quizId);
      setFeedbackDetails(data);
      setError(null); // 에러 초기화
    } catch (error) {
      setError("Failed to fetch quiz details.");
      console.error(error);
    } finally {
      setLoading(false); // 로딩 상태 종료
    }
  };

  const handleDeleteQuiz = async (quizTitle) => {
    try {
      await deleteQuizRequest(quizTitle); // 삭제 API 호출
      // 삭제 후 퀴즈 목록 다시 불러오기
      const updatedQuizList = quizList.filter((quiz) => quiz.title !== quizTitle);
      setQuizList(updatedQuizList);
      setError(null); // 에러 초기화
    } catch (error) {
      setError("Failed to delete quiz.");
      console.error(error);
    }
  };

  // 스타일 동작 함수
  const handleMouseEnter = (e, isSelected) => {
    e.currentTarget.style.backgroundColor = isSelected ? "#63b5da" : "#a0a0a0";
  };

  const handleMouseLeave = (e, isSelected) => {
    e.currentTarget.style.backgroundColor = isSelected ? "#63b5da" : "white";
  };

  return (
    <FeedbackContainer>
      {/* 로딩 중일 때 모달 스타일로 로딩 스피너 표시 */}
      {loading && (
        <SpinnerContainer>
          <div className="spinner-container">
            <div className="spinner"></div>
            🧐 피드백을 불러오는 중입니다!
          <h4>.... 조금만 기다려주세요 ....</h4>
          </div>
        </SpinnerContainer>
        
      )}

      {/* 좌측 피드백 세부정보 패널 */}
      <FeedbackPanel>
        {feedbackDetails ? (
          <FeedbackDetails>
          <h2>{feedbackDetails.quiz_title}</h2>
          {feedbackDetails
            .sort((a, b) => a.question.number - b.question.number) // question.number를 기준으로 정렬
            .map((feedbackItem, index) => (
            <div key={feedbackItem.question.number}>
              <div className="divider"></div>
                <h3>
                  문제 {feedbackItem.question.number}:{" "}
                  {feedbackItem.question.content}
                </h3>
                <hr/>
                <div>
                  <p className="small-title">선택한 답</p>
                  <p
                    className="content"
                    style={{
                      backgroundColor: feedbackItem.user_answer?.selected_choice?.is_correct
                        ? "#43b738"  // 정답이면 초록색
                        : "#e57f7b",  // 정답이 아니면 빨간색
                      padding: "5px",
                      borderRadius: "5px",
                    }}
                  >
                    {feedbackItem.user_answer?.selected_choice?.content || "선택한 답이 없습니다."}
                  </p>
                  <div className="divider2"></div>
                </div>
                
                <div>
                  <p className="small-title">정답</p>
                  <ol className="content">
                    {feedbackItem.choice
                      .filter((choice) => choice.is_correct)
                      .map((correctChoice) => (
                        <li key={correctChoice.number}>{correctChoice.content}</li>
                      ))}
                  </ol>
                  <div className="divider2"></div>
                </div>
                <div>
                  <p className="small-title">피드백</p>
                  <p className="content" style={{ marginBottom: '25px' }}>{feedbackItem.feedback?.feedback || "피드백 없음"}</p>
                </div>
                <div className="divider3"></div>
              </div>
            ))}
          </FeedbackDetails>
        ) : (
          <Notice style={{ fontSize: '3em', overflow:'hidden' }}>
            {error ? error : (
              <>
                Quiz List에서 퀴즈를 선택하여<br />
                피드백을 확인하세요.
              </>
            )}
          </Notice>
        )}
      </FeedbackPanel>

      {/* 우측 퀴즈 리스트 패널 */}
      <QuizListPanel>
        <FeedbackTitle>Quiz List</FeedbackTitle>
        {quizList.length > 0 ? (
          <div>
            {quizList.map((quiz) => (
              <div
                key={quiz.id}
                onClick={() => !loading && handleQuizSelect(quiz.id)} // 로딩 중이면 클릭 안됨
                style={{
                  cursor: loading ? "not-allowed" : "pointer", // 로딩 중이면 클릭 불가
                  padding: "10px",
                  borderRadius: "7px",
                  backgroundColor:
                    selectedQuizId === quiz.id ? "#d3e0ea" : "white",
                  border: "1px solid #ddd",
                  marginBottom: "10px",
                  transition: "background-color 0.3s",
                  opacity: loading ? 0.5 : 1, // 로딩 중이면 항목이 반투명
                }}
                onMouseEnter={(e) =>
                  handleMouseEnter(e, selectedQuizId === quiz.id)
                }
                onMouseLeave={(e) =>
                  handleMouseLeave(e, selectedQuizId === quiz.id)
                }
              >
                {quiz.title}
                <button
                  onClick={(e) => {
                    e.stopPropagation(); // 클릭 시 퀴즈 선택을 방지
                    handleDeleteQuiz(quiz.title);
                  }}
                  style={{
                    padding: "1px",
                    backgroundColor: "transparent",
                    color: "#f44336",
                    border: "none",
                    cursor: "pointer",
                  }}
                >
                  <AiOutlineClose size={15} style={{marginBottom: '-2px', marginLeft: '3px'}} />
                </button>
              </div>
              
            ))}
          </div>
        ) : (
          <p>퀴즈 목록을 불러오는 중이거나 비어 있습니다.</p>
        )}
      </QuizListPanel>
    </FeedbackContainer>
  );
};

export default Feedback;

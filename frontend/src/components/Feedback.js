import React, { useState, useEffect } from "react";
import { fetchQuizRequest, fetchfeedbackDetails } from "../apiFeedbackRequest";
import {
  FeedbackContainer,
  FeedbackPanel,
  QuizListPanel,
  FeedbackTitle,
  FeedbackDetails,
} from "../styled/FeedbackStyles";
import "./app.css";

const Feedback = () => {
  const [quizList, setQuizList] = useState([]);
  const [selectedQuizId, setSelectedQuizId] = useState(null);
  const [feedbackDetails, setFeedbackDetails] = useState(null);

  // 퀴즈 리스트 가져오기
  useEffect(() => {
    const loadQuizList = async () => {
      try {
        const data = await fetchQuizRequest();
        setQuizList(data);
      } catch (error) {
        console.error("Failed to fetch quiz list:", error);
      }
    };
    loadQuizList();
  }, []);

  // 선택된 퀴즈의 세부 정보 가져오기
  const handleQuizSelect = async (quizId) => {
    setSelectedQuizId(quizId);
    try {
      const data = await fetchfeedbackDetails(quizId);
      setFeedbackDetails(data);
    } catch (error) {
      console.error("Failed to fetch quiz details:", error);
    }
  };

  return (
    <FeedbackContainer>
      {/* 좌측 피드백 세부정보 패널 */}
      <FeedbackPanel>
        {feedbackDetails ? (
          <FeedbackDetails>
            <h2>{feedbackDetails.quiz_title}</h2>
            {feedbackDetails.map((feedbackItem) => (
              <div key={feedbackItem.question.number}>
                <div className="divider"></div>
                <h3>
                  문제 {feedbackItem.question.number}:{" "}
                  {feedbackItem.question.content}
                </h3>
                <hr></hr>
                <div>
                  <p>선택한 답</p>
                  <p>{feedbackItem.user_answer.selected_choice.content}</p>
                </div>
                <div>
                  <p>피드백</p>
                  <p>{feedbackItem.feedback.feedback}</p>
                </div>
                <div>
                  <p>정답</p>
                  <ul>
                    {feedbackItem.choice
                      .filter((choice) => choice.is_correct)
                      .map((correctChoice) => (
                        <li key={correctChoice.number}>{correctChoice.content}</li>
                      ))}
                  </ul>
                </div>
              </div>
            ))}
          </FeedbackDetails>
        ) : (
          <p style={{marginLeft: 30, fontSize: '2em'}}>문제를 선택하여 피드백을 다시 확인할 수 있습니다.</p>
        )}
      </FeedbackPanel>

      {/* 우측 퀴즈 리스트 패널 */}
      <QuizListPanel>
        <FeedbackTitle>Quiz List</FeedbackTitle>
        <ul>
          {quizList.map((quiz) => (
            <li
              key={quiz.id}
              onClick={() => handleQuizSelect(quiz.id)}
              style={{
                cursor: "pointer",
                padding: "10px",
                backgroundColor: selectedQuizId === quiz.id ? "#f0f0f0" : "white",
                border: "1px solid #ddd",
                marginBottom: "5px",
              }}
            >
              {quiz.title}
            </li>
          ))}
        </ul>
      </QuizListPanel>
    </FeedbackContainer>
  );
};

export default Feedback;
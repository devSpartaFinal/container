import React, { useState, useEffect } from 'react';
import { fetchQuizRequest, fetchfeedbackDetails } from '../apiFeedbackRequest';
import {
    FeedbackContainer,
    FeedbackSelectContainer,
    FeedbackTitle,
  } from "../styled/FeedbackStyles";

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
                console.error('Failed to fetch quiz list:', error);
            }
        };
        loadQuizList();
    }, []);

    // 선택된 퀴즈의 세부 정보 가져오기
    const handleQuizChange = async (quizId) => {
        setSelectedQuizId(quizId);
        try {
            const data = await fetchfeedbackDetails(quizId);
            setFeedbackDetails(data);
        } catch (error) {
            console.error('Failed to fetch quiz details:', error);
        }
    };

    return (
        <FeedbackContainer>
            <FeedbackSelectContainer>
            <FeedbackTitle>Feedback</FeedbackTitle>
            <label htmlFor="quiz-select">Select a Quiz:</label>
            <select
                id="quiz-select"
                onChange={(e) => handleQuizChange(e.target.value)}
                value={selectedQuizId || ''}
            >
                <option value="" disabled>
                    -- Select a Quiz --
                </option>
                {quizList.map((quiz) => (
                    <option key={quiz.id} value={quiz.id}>
                        {quiz.title}
                    </option>
                ))}
            </select>

            {feedbackDetails && (
                    <div>
                        <h2>{feedbackDetails.quiz_title}</h2>
                        {feedbackDetails.map((feedbackItem) => (
                            <div key={feedbackItem.question.number}>
                                <h3>Question {feedbackItem.question.number}: {feedbackItem.question.content}</h3>
                                <div>
                                    <strong>Your Answer:</strong>
                                    <p>{feedbackItem.user_answer.selected_choice.content}</p>
                                </div>
                                <div>
                                    <strong>Feedback:</strong>
                                    <p>{feedbackItem.feedback.feedback}</p>
                                </div>
                                <div>
                                    <strong>Correct Answer:</strong>
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
                    </div>
                )}
            </FeedbackSelectContainer>
        </FeedbackContainer>
    );
};

export default Feedback;
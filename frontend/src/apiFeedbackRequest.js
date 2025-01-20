import { quizApiRequest } from './apiRequest';

export const fetchQuizRequest = async () => {
    const response = await quizApiRequest.get('/request/');
    return response.data;
};

export const fetchfeedbackDetails = async (quizId) => {
    const response = await quizApiRequest.get(`/feedback/detail/${quizId}/`);
    return response.data;
};

export const deleteQuizRequest = async (quizTitle) => {
    try {
        const response = await quizApiRequest.delete('/request/', {
            data: { title: quizTitle }, // 삭제할 quiz.title을 data로 전달
        });
        return response.data; // 성공적으로 삭제된 경우의 응답 데이터 반환
    } catch (error) {
        console.error("Error deleting quiz:", error);
        throw new Error("Failed to delete quiz."); // 오류 발생 시 예외 처리
    }
};
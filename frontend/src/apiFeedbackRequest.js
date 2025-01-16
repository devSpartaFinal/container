import { quizApiRequest } from './apiRequest';

export const fetchQuizRequest = async () => {
    const response = await quizApiRequest.get('/request/');
    return response.data;
};

export const fetchfeedbackDetails = async (quizId) => {
    const response = await quizApiRequest.get(`/feedback/detail/${quizId}/`);
    return response.data;
};
import axios from 'axios';
export const apiRequest = axios.create({
    baseURL: 'http://localhost:8000/api/v1/accounts',
    headers: {
        "Content-Type": "application/json",
    },
});

export const chatApiRequest = axios.create({
    baseURL: 'http://localhost:8000/api/v1/chatbot',
    headers: {
        "Content-Type": "application/json",
    },
});

export const quizApiRequest = axios.create({
    baseURL: 'http://localhost:8000/api/v1/quizbot',
    headers: {
        "Content-Type": "application/json",
    },
});
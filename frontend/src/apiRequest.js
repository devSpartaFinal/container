import axios from 'axios';

const baseURL = process.env.REACT_APP_BASE_URL;


export const apiRequest = axios.create({
    baseURL: `${baseURL}/api/v1/accounts`,
    headers: {
        "Content-Type": "application/json",
    },
});

export const chatApiRequest = axios.create({
    baseURL: `${baseURL}/api/v1/chatbot`,
    headers: {
        "Content-Type": "application/json",
    },
});

export const quizApiRequest = axios.create({
    baseURL: `${baseURL}/api/v1/quizbot`,
    headers: {
        "Content-Type": "application/json",
    },
});

export const popquizApiRequest = axios.create({
    baseURL: `${baseURL}/api/v1/chat`,
    headers: {
        "Content-Type": "application/json",
    },
});
import axios from 'axios';

const apiRequest = axios.create({
    baseURL: 'http://localhost:8000/api/v1/accounts',
    headers: {
        "Content-Type": "application/json",
    },
});

export default apiRequest;
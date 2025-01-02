import apiRequest from './apiRequest';


export const signup = async () => {
    const response = await apiRequest.post('/');
    return response.data;
};

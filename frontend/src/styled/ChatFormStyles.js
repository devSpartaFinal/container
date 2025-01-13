import styled from 'styled-components';

export const MessageForm = styled.form`
    padding: 40px 50px 0px 40px;
    display: flex;
    align-items: center;
    height: 5%;
    margin-top: -20px;
    margin-bottom: 0px;
    gap: 10px; 

    & input {
        flex: 1;
        height: 15px; 
        border: none;
        font-size: 1.0rem;
        padding: 15px 0px 15px;
    }

    & button {
        height: 40px;  
        width: 40px;  /* Button size */
        background-color: transparent; /* Remove default button styles */
        border: none;
        display: flex;
        justify-content: center;
        align-items: center;
    }
`;



export const ChatFooterContainer = styled.div`
    text-align: left;
    padding: 0px 0px 0px 0px;  /* 세로 패딩을 줄여서 간격을 줄임 */
`;

export const ChatFooterDivider = styled.div`
  height: 1px;
  background-color: rgba(0, 0, 0, 0.1);
  margin-bottom: 0px;  /* Divider와 input 사이의 간격을 없애기 위해 margin을 0으로 설정 */
`;

export const LoadingSpinner = styled.div`
border: 2px solid rgba(255, 255, 255, 0.3);
border-top: 2px solid #63b5da;
border-radius: 50%;
width: 1.5em;
height: 1.5em;
animation: spin 0.8s linear infinite;

@keyframes spin {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
`;
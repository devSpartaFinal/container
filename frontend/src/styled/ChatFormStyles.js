import styled from 'styled-components';

export const MessageForm = styled.form`
    padding: 40px 100px 0px 40px;
    display: flex;
    align-items: center;  /* Ensure both input and button align vertically */
    height: 5%;
    margin-top: 0px;
    margin-bottom: 10px;
    gap: 10px;  /* Adds space between input and button */

    & input {
        flex: 1;
        height: 15px;  /* Same height as button */
        border: none;
        font-size: 1.0rem;
        padding: 15px 0px 15px;  /* Adjust input padding */
    }

    & button {
        height: 40px;  /* Same height as input */
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
    padding: 0px 20px 0px 20px;  /* 세로 패딩을 줄여서 간격을 줄임 */
`;

export const ChatFooterDivider = styled.div`
  height: 1px;
  background-color: rgba(0, 0, 0, 0.1);
  margin-bottom: 0px;  /* Divider와 input 사이의 간격을 없애기 위해 margin을 0으로 설정 */
`;


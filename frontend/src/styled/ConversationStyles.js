import styled from "styled-components";

export const ConversationContainer = styled.div`
    display: flex;
    flex-direction: column;
    gap: 1vh; /* 메시지 간의 간격 */
    flex: 1;
    padding: 10px 40px; /* 왼쪽 패딩값을 줄임 */
    overflow: auto;
`;

export const MessageContent = styled.div`
    display: flex;
    font-size: 1.1em;
    font-weight: 300;
    padding: 0.8em 1em;
    width: fit-content;
    height: fit-content;
`;

export const BotMessage = styled.div`
    width: fit-content;
    margin: 0 20px;
    padding: 1vh 1vw;
    font-size: 1.1em;
    text-align: center;
    border-radius: 2em;
    background: rgba(0,0,0,0.05);
`;

export const Chat = styled.div`
    padding: 1vh 1vw; /* 좌우 패딩을 vw 단위로 줄임 */

    display: flex;
    flex: 1;
    flex-direction: column;
    height: 80%;
    background: #fff;
    border-radius: 30px;

    @media (max-width: 820px) {
        margin: 0 2.5vw; /* 화면이 좁을 때 여백 조정 */
    }
`;

export const ChatHeaderDivider = styled.div`
    height: 1px;
    background-color: rgba(0, 0, 0, 0.1);
    margin-bottom: 5px; /* Divider와 Conversation 간 간격 줄임 */
`;

export const ChatScreenContainer = styled.div`
    display: flex;
    flex-direction: column;
    height: 100%;
    gap: 5px; /* 전체 간격 줄임 */
`;


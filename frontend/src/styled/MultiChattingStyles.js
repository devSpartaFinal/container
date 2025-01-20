import styled from "styled-components";

export const HomeContainer = styled.div`
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100%;
    width: 100%;
    background-color: #eeeeee;
    // background: linear-gradient(135deg, #f6d365, #fda085);
    color: #ffffff;
    font-family: "Arial", sans-serif;
    text-align: center;
    overflow-x: hidden;
`;

export const ChatContainer = styled.div`
    display: flex;
    flex-direction: column;
    width: 70%;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 8px;
    background-color: #f9f9f9;
`;

export const Header = styled.div`
    text-align: center;
    margin-bottom: 20px;
    font-size: 24px;
    font-weight: bold;
`;

export const ChatRoom = styled.div`
    display: flex;
    flex-direction: row;
    gap: 20px;
`;

export const ParticipantsBox = styled.div`
    flex: 2; /* 참여자 목록 영역의 비율 */
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 10px;
    background-color: #fff;
`;


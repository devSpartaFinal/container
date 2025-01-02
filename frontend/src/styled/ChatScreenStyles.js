import styled from "styled-components";

export const ChatScreenContainer = styled.div`
    --vertical-padding: 3vh;

    display: flex;
    gap: 2vw;
    height: 40vw;
    width: 50vw;
    min-height: 80vh;
    justify-content: space-between;
    flex-direction: column; 
    justify-content: flex-start; 
    background-color: #ffffff;
    border-radius: 45px; /* 모서리 둥글게 */
    box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px,
                rgba(0, 0, 0, 0.12) 0px -12px 30px,
                rgba(0, 0, 0, 0.12) 0px 4px 6px,
                rgba(0, 0, 0, 0.17) 0px 12px 13px,
                rgba(0, 0, 0, 0.09) 0px -3px 5px;

    position: absolute;
    top: 50%;  /* 화면의 세로 중앙 */
    left: 46%; /* 화면의 가로 중앙 */
    transform: translate(-50%, -50%);
    
    @media (max-width: 900px) {
        width: 90vw;  
        height: 90vh;  
        font-size: 0.85rem;
        top: 50%;  
        left: 50%;  
        transform: translate(-50%, -50%); 
    }
`;

export const ChatHeaderContainer = styled.div`
  text-align: left;
  padding: 0px 40px 0px;
`;

export const ChatHeaderTitle = styled.h4`
  font-size: 1.5rem;
`;

export const ChatHeaderDescription = styled.p`
  font-size: 1rem;
  line-height: 1.5;
`;

export const ChatHeaderDivider = styled.div`
  height: 1px;
  background-color: rgba(0, 0, 0, 0.1);
`;

export const CenterContainer = styled.div`
    display: flex;
    flex: 1;
    gap: 1.5vw;
    flex-direction: column;
    height: 90%;
    overflow: hidden;
`;

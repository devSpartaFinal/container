import styled from "styled-components";

export const DropdownRowContainer = styled.div`
  position: relative;
  display: flex;  
  flex-direction: row;  
  gap: 20px;
  margin: 10px 0;
  top: -46%;
  height: 2vw;
  max-width: 100%;
  left: 2.7%;
`;

export const DropdownLeftRowMenu = styled.ul`
  display: ${({ isOpen }) => (isOpen ? "block" : "none")};
  position: absolute;
  top: calc(100% + 15px); /* 드롭다운 버튼 바로 아래에 위치 */
  left: 0; /* 기본적으로 왼쪽으로 펼쳐짐 */
  background-color : rgba(255, 255, 255, 0.9);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  list-style: none;
  margin: 0;
  padding: 5px 0;
  width: 200px; /* 드롭다운 너비 */
  border: 1px solid #d1d1d1;
  border-radius: 10px;
  z-index: 1000;

  max-height: 150px;  /* 원하는 최대 높이로 조정 */
  overflow-y: auto;   /* 내용이 넘치면 수직으로 스크롤 가능 */
  
  /* 드롭다운이 열릴 때, 좌측 아래로 펼쳐지도록 설정 */
  left: 0; /* 버튼의 좌측에 드롭다운이 위치하도록 */
  top: 100%; /* 버튼 바로 아래에 펼쳐지도록 */
  margin-top: 5px; /* 버튼과 드롭다운 사이에 공간 추가 */
`;

export const DropdownRightRowMenu = styled.ul`
  display: ${({ isOpen }) => (isOpen ? "block" : "none")};
  position: absolute;
  top: calc(100% + 20px); /* 두 번째 드롭다운 버튼 바로 아래 */
  left: 15%; /* 두 번째 드롭다운 메뉴가 첫 번째 드롭다운의 오른쪽에 위치하도록 */
  margin-left: 10px; /* 두 번째 드롭다운과 첫 번째 드롭다운 사이에 간격 추가 */
  background-color : rgba(255, 255, 255, 0.9);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  list-style: none;
  margin: 0;
  padding: 5px 0;
  width: 300px;
  border: 1px solid #d1d1d1;
  border-radius: 4px;
  z-index: 1000;

  max-height: 150px;  /* 원하는 최대 높이로 조정 */
  overflow-y: auto;
`;

export const InformationRowContainer = styled.div`
  position: relative;
  flex-direction: column;  /* 드롭다운 아이템 세로 정렬 */
  margin: 4px 0px;
  top: -130px;
  left: 100px;
`;

export const InformationRowButton = styled.button`
  display: flex;
  justify-content: space-between;  
  align-items: center;
  gap: 8px;
  padding: 10px 4px;
  background: linear-gradient(to right, #eeeeee 50%, #63b5da 50%);  
  border: none;
  width: 13vw;
  border-radius: 10px;
  cursor: pointer;
  font-size: 1em;
  color: #333;
  transition: background-color 0.3s ease;

  &:hover {
    background: linear-gradient(to right, #e57f7b 50%, #63b5da 50%);  
  }

  /* 좌측 텍스트(Quiz Count) 스타일 */
  & > span:first-child {
    flex-grow: 1;
    text-align: left;
    padding-left: 5px;
  }

  /* 우측 텍스트(1) 스타일 */
  & > span:last-child {
    text-align: right;
    padding-right: 5px;
  }
`;

export const FormQuizContainer = styled.div`
  position: absolute;
  display: flex;  
  flex-direction: column;  
  margin: 50px;
  border-radius: 4px;
  top: 3%;
  width: 91.5%;
  left: 4.5%;
  height: 90%;
  background: #eeeeee;
  overflow-y: auto;
  overflow-x: hidden;

  @media (max-width: 1200px) {
  gap: 1vw;
  width: 95%;
  height: 82%;
  padding: 1vh;
  left: -3%;
  }
`;

export const FormQuizTestContainer = styled.div`
  display: grid;
  grid-template-columns: repeat(2, 1fr); /* 2열 */
  grid-auto-rows: 480px;;
  gap: 1px;
  width: 100%;
`;

export const FormQuizCardContainer = styled.div`
  position: relative;
  display: flex;
  flex-direction: column;
  margin-left: 2%;
  margin-top: 3%;
  width: 95%;
  background: #eeeeee;
  box-sizing: border-box;
  border-right: 2px solid #5a5a5a;
  overflow-y: auto;
`;

export const TitleContainer = styled.div`
  text-align: flex-start;
  margin-left: 1.5%;
  margin-right: 1.5%;
  margin-top: 1.5%;
  font-size: 1.7em; 
  font-weight: bold;
  color: #464646;
`;

export const QuizContentContainer = styled.div`
  text-align: flex-start;
  font-size: 1.2em; 
  font-weight: bold;
  color: #63b5da;
`;

export const OptionButton = styled.button`
  text-align: left;
  margin-left: 2%;
  margin-top: 1.5%;
  color: #464646;
  border: 2px solid transparent;
  width: 95%;
  cursor: pointer;
  font-size: 1em;

  &:hover {
    background-color: #6e6e6e;
    color: white;
    border-radius: 3px;
  }

  &.selected {
    background-color: #6e6e6e;
    border-radius: 3px;
    color: white;
    font-weight: bold;
  }

  &:focus {
    outline: none;
  }
`;

export const SubmitButton = styled.button`
  background-color: transparent;
  color: #505050;
  border: 2px solid #6e6e6e;
  padding: 10px 10px;
  margin-top: 1%;
  margin-bottom: 2%;
  margin-left: -3%;
  border-radius: 4px;
  cursor: pointer;
  font-size: 1em;
  width: 600px;
  transition: all 0.3s ease;

  &:hover {
    background-color: #505050;
    color: white;
  }

  &.selected {
    background-color: #505050;
    color: white;
    font-weight: bold;
  }

  &:focus {
    outline: none;
  }
`;

export const SubmitContainer = styled.div`
  display: flex;  
  position: relative;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 100%;
`;

export const OptionContainer = styled.div`  
  position: absolute;
  display: colum;
  height: 50%;
`;


export const Option2Container = styled.div`
  position: absolute;
  width: 100%;
  height: 80%;
  overflow-x: hidden;
`;

export const Option2Button = styled.button`
  background-color: transparent;
  color: #63b5da;
  border: 2px solid #63b5da;
  padding: 10px 10px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 1em;
  min-width: 90%;
  margin-top: 1.5%;
  margin-left: 4%;

  &:hover {
    background-color: #63b5da;
    color: white;
  }

  &.selected {
    background-color: #63b5da;
    color: white;
    font-weight: bold;
  }

  &:focus {
    outline: none;
  }

`;


export const ModalContainer = styled.div`
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0, 0, 0, 0.5);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  border-radius: 15px;
`;

export const ModalContent = styled.div`
  display: flex;
  flex-direction: column; 
  align-items: center;
  justify-content: center;
  background: white;
  padding: 20px;
  border-radius: 10px;
  position: relative; 
  max-width: 500px;
  width: 100%;
`;

export const DetailButton = styled.button`
  margin-top: 10px;
  padding: 10px;
  background-color: #4CAF50;
  color: white;
  border: none;
  cursor: pointer;
  font-size: 16px;
  width: 100%;
  
  &:hover {
    background-color: #45a049;
  }
`;

export const CloseButton = styled.button`
position: absolute;
top: 5%;
right: 18%;
background: none;
border: none;
font-size: 25px;
font-weight: bold;
color: #333;
cursor: pointer;
`;

export const FeedbackContent = styled.div`
  background: white;
  padding: 15px;
  border-radius: 10px;
  position: relative; 
  margin-top: 25%;
  margin-right: 3%;
  color: #3c3c3c;
  line-height: 1.7;

  @media (max-width: 1400px) {
  margin-top: 33%;
  }

  @media (max-width: 1300px) {
  margin-top: 39%;
  }
  
  @media (max-width: 1200px) {
  margin-top: 45%;
  }

  @media (max-width: 1100px) {
  margin-top: 49%;
  }

  @media (max-width: 1000px) {
  margin-top: 58%;
`;

export const ContentButton = styled.button`
  display: flex;
  align-items: center;
  padding: 10px 20px;
  height: 50px;
  background-color: #63b5da;
  border: 0px solid #63b5da;

  border-radius: 10px;
  font-size: 1em;
  color: #ffffff;
`;
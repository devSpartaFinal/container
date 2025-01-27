import styled from "styled-components";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

export const DropdownButton = styled.button`
  display: flex;
  text-align: center;
  justify-content: center;
  align-items: center;
  gap: 8px;
  padding: 10px;
  padding-right: 40px;
  padding-bottom: 10px;
  cursor: pointer;
  font-size: 1em;
  background-color: transparent;
  border: 3px solid #ffffff;
  border-radius: 9px;
  transition: background-color 0.3s ease;
  width: auto;
  color: #ffffff;
  hegiht: 40px;

  overflow-x: auto;
  overflow-y: hidden;
  white-space: nowrap;

  &:hover {
    background-color: #e57f7b;  
  }

  button:disabled {
  background-color: #ccc; /* 비활성화 상태 색상 */
  cursor: not-allowed;
}
`;

export const DropdownItem = styled.li`
  padding: 10px;
  font-size: 1.0rem;
  color: #000000;
  cursor: pointer;
  transition: background 0.2s ease;
  

  &:hover {
   background-color: #e57f7b;  
  }
`;

export const ArrowIcon = styled.span`
  display: flex;
  align-items: center;
  transform: ${(props) => (props.isOpen ? "rotate(180deg)" : "rotate(0deg)")};
  transition: transform 0.3s ease;
`;

export const GenerateButtonContainer = styled.div`
  position: relative;
  display: flex;
  alignItem: center;
`;

export const GenerateQuizButton = styled.button`
  display: flex;
  height: 50px;
  align-items: center;
  padding: 10px 20px;
  background-color: #fb4759;
  border: 0px solid #fb4759;

  border-radius: 10px;
  cursor: pointer;
  font-size: 1em;
  color: #ffffff;
  transition: background-color 0.3s ease;

  &:hover {
    transform: scale(1.05);
    background-color:rgb(254, 99, 115);  
  }

  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
`;

export const ChatScreenContainer = styled.div`
    display: flex;
    height: 85%;
    width: 77%;
    justify-content: space-between;
    flex-direction: column; 
    justify-content: flex-start; 
    background-color: #ffffff;
    border-radius: 45px; /* 모서리 둥글게 */
    box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px,
                rgba(0, 0, 0, 0.12) 0px 4px 6px,
                rgba(0, 0, 0, 0.17) 0px 12px 13px,
                rgba(0, 0, 0, 0.09) 0px -3px 5px;

    position: absolute;
    top: 10%;  /* 화면의 세로 중앙 */
    left: 6.8%; /* 화면의 가로 중앙 */

    @media (max-width: 1800px) {
      top: 11%;
      height: 85%;
    }
    
    @media (max-width: 1600px) {
      top: 12%;
      height: 85%;
    }

    @media (max-width: 1400px) {
      top: 13%;
      height: 83%;
    }

    @media (max-width: 1200px) {
      top: 14%;
      height: 81%;
      width: 81%;
      left: 2%;
    }

    @media (max-width: 992px) {
      top: 15%;
      height: 79%;
    }

    @media (max-width: 768px) {
      top: 17%;
      height: 77%;
    }

    @media (max-width: 576px) {
      top: 19%;
      height: 72%;
    }
`;

export const ChatHeaderContainer = styled.div`
  text-align: left;
  margin-top: -0.5%;
  margin-left: 2%;
  width: 97%;
`;

export const ChatHeaderDescription = styled.p`
  font-size: 1rem;
  line-height: 1.3;
  max-height: 550px;
  overflow-y: auto;
  margin-top: -1%;

  @media (max-width: 1200px) {
  max-height: 300px;
  }
`;

export const ChatHeaderDivider = styled.div`
  height: 1px;
  background-color: rgba(0, 0, 0, 0.1);
`;

export const ChatHeaderTitle = styled.h4`
  font-size: 1.5rem;
  margin-bottom: -0.1%;
`;

export const CenterContainer = styled.div`
    display: flex;
    flex: 1;
    gap: 1.5vw;
    flex-direction: column;
    height: 90%;
    overflow: hidden;
    margin-bottom: -20px;

    ::-webkit-scrollbar {
        width: 6px; /* 스크롤바의 너비를 좁게 설정 */
    }

    ::-webkit-scrollbar-thumb {
        background-color:  #eeeeee; /* 스크롤바 thumb 색상 */
        border-radius: 10px; /* 둥근 모서리 */
        border: 2px solid rgba(0, 0, 0, 0.1); /* 스크롤바 둘레 */
    }

    ::-webkit-scrollbar-thumb:hover {
        background-color: #eeeeee; /* hover 시 색상 변화 */
    }

    ::-webkit-scrollbar-track {
        background-color: #ffffff; /* 스크롤바 트랙 색상 */
        border-radius: 10px;
    }
`;

export const DropdownRowContainer = styled.div`
  position: relative;
  display: flex;  
  flex-direction: row;  
  gap: 20px;
  margin-top: 2%;
  top: -47%;
  left: -5%;
  max-height: 5%;
`;

export const DropdownLeftRowMenu = styled.ul`
  display: ${({ isOpen }) => (isOpen ? "block" : "none")};
  position: absolute;
  top: calc(100% + 5px); /* 드롭다운 버튼 바로 아래에 위치 */
  left: 0; /* 기본적으로 왼쪽으로 펼쳐짐 */
  background-color : rgba(255, 255, 255, 0.9);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  list-style: none;
  margin: 0;
  padding: 5px 0;
  width: 150px; /* 드롭다운 너비 */
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
  top: calc(100% + 5px); /* 두 번째 드롭다운 버튼 바로 아래 */
  left: 17%; /* 두 번째 드롭다운 메뉴가 첫 번째 드롭다운의 오른쪽에 위치하도록 */
  margin-left: 10px; /* 두 번째 드롭다운과 첫 번째 드롭다운 사이에 간격 추가 */
  background-color : rgba(255, 255, 255, 0.9);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  list-style: none;
  margin: 0;
  padding: 5px 0;
  width: 500px;
  border: 1px solid #d1d1d1;
  border-radius: 10px;
  z-index: 1000;

  max-height: 150px;  /* 원하는 최대 높이로 조정 */
  overflow-y: auto;
`;

export const ToggleButton = styled.button`
  background-color: transparent;
  border: none;
  color: #007bff;
  font-size: 0.9rem;
  cursor: pointer;
  margin: 10px 0;

  &:hover {
    text-decoration: underline;
  }
`;

export const PlusButton = styled(FontAwesomeIcon)`
  position: relative;
  right: -3%;
  height: 1.2em;
  width: 1.3em;
  top: -3.3%;
  
  color: ${(props) => (props.disabled ? "#ccc" : "black")}; /* Gray when disabled, blue otherwise */
  
  &:hover {
    color: ${(props) => (props.disabled ? "#ccc" : "#63b5da")}; /* No hover effect when disabled */
  }
`;

export const PlusButton2 = styled.button`
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: transparent;
  color: ${(props) => (props.disabled ? "#1E3269" : "white")};
  cursor: ${(props) => (props.disabled ? "not-allowed" : "pointer")} !important;
  opacity: ${(props) => (props.disabled ? 0.5 : 1)};
  font-size: 1rem;
  width: 3%;
  height: 5%;
  top: -1.5%;
  left: 43%;
  z-index: 1000;

  &:hover {
    background-color: transparent;
    color: ${(props) => (props.disabled ? "inherit" : "#63b5da")};
    border: 1px solid ${(props) => (props.disabled ? "transparent" : "transparent")};
  }

  &:hover::after {
    content: attr(data-tooltip);
    position: absolute;
    left: 30%;
    top: -70%;
    transform: translateX(-50%);
    background: rgba(0, 0, 0, 0.75);
    color: white;
    padding: 5px 10px;
    border-radius: 5px;
    font-size: 1em;
    white-space: nowrap;
  }

  & > svg {
    margin-right: 5%;
  }
`;


export const Chat = styled.div`
    padding: 1vh 0.2vw; /* 좌우 패딩을 vw 단위로 줄임 */

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


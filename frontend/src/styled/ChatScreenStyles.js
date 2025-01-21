import styled from "styled-components";
import { faSquarePlus } from "@fortawesome/free-solid-svg-icons";


export const ChatScreenContainer = styled.div`
    display: flex;
    height: 89%;
    width: 77%;
    min-height: 70vh;
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
    top: 53.5%;  /* 화면의 세로 중앙 */
    left: 45.4%; /* 화면의 가로 중앙 */
    transform: translate(-50%, -50%);

    @media (max-width: 1800px) {
      width: 70%;  
      height: 8%;  
      top: 53%;  
      transform: translate(-50%, -50%); 
    }
    
    @media (max-width: 1600px) {
      width: 70%;  
      height: 90%;  
      top: 54%;
      left: 44%;  
      transform: translate(-50%, -50%); 
    }

    @media (max-width: 1400px) {
      width: 65%;  
      height: 90%;  
      top: 54%;
      left: 42.5%;  
      transform: translate(-50%, -50%); 
    }

    @media (max-width: 1200px) {
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
  margin-top: -0.5%;
  margin-left: 2%;
  width: 97%;
`;

export const ChatHeaderTitle = styled.h4`
  font-size: 1.5rem;
  margin-bottom: -0.1%;
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

export const PillContainer = styled.div`
  display: flex;
  gap: 1vw;  
  height: 6.5vh;
  width: 48vw;
  align-items: column;
  position: absolute;
  top: 9%;
  left: 49%;
  transform: translate(-50%, -50%);
  z-index: 10;

  background-color: #ffffff;
  border-radius: 25px;

  padding: 0.9vh 1vw;

  @media (max-width: 980px) {
    gap: 0.5vw;
    top: 0.3%;
    width: 90%;
    padding: 0.5vh;
  }
`;

export const Pill1 = styled.div`
  padding: 0.5vh 1vw;
  background-color: ${({ isActive }) => (isActive ? "#fb6d7a" : "#fb6d7a")}; 
  color: ${({ isActive }) => (isActive ? "#ffffff" : "#ffffff")}; 
  height: 3vh;
  width: 14vw;
  font-size: 1.1rem;
  font-weight: 500;
  border-radius: 20px;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative; 
  padding-left: 1vw;  
  border: 2px solid ${({ isActive }) => (isActive ? "#fb6d7a" : "#fb6d7a")}; 

  &:hover {
    background-color: ${({ isActive }) => (isActive ? "#fb6d7a" : "#ffffff")}; 
    color: ${({ isActive }) => (isActive ? "#ffffff" : "#757575")}; 
  }

  @media (max-width: 980px) {
    font-size: 0.85rem;
    padding: 0.5vh 2vw;
    min-width: 15vw;
  }
`;



export const Pill1_child = styled.div`
  padding: 0.5vh 1vw;
  background-color: #e9ecef;
  color: #495057;
  height: 2.5vh;
  width: 6vw;
  font-size: 0.8rem;
  font-weight: 500;
  border-radius: 20px; 
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative; 
  padding-top: 1vh;

  &:hover {
    background-color: #dee2e6; 
  }

  &.active {
    background-color: #6c757d; 
    color: #ffffff;
  }

  @media (max-width: 980px) {
    font-size: 0.85rem;
    padding: 0.5vh 2vw;
    min-width: 15vw;
  }
`;





export const Pill2 = styled.div`
    display: flex; 
    align-items: center; 
    justify-content: center; 
    padding: 0.5vh 1vw;
    background-color: ${({ isActive }) => (isActive ? "#6c757d" : "#e9ecef")};
    color: ${({ isActive }) => (isActive ? "#ffffff" : "#495057")};
    height: 5.5vh;
    width: 30vw;
    font-size: 1rem;
    font-weight: 500;
    border-radius: 20px; 
    cursor: pointer;
    transition: all 0.3s ease;

    &:hover {
        background-color: #dee2e6; 
    }

    &.active {
        background-color: #6c757d; 
        color: #ffffff;
    }

    @media (max-width: 980px) {
        font-size: 0.85rem;
        padding: 0.5vh 2vw;
        min-width: 40vw;
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


export const PlusButton = styled.button`
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 2.5%;
  background-color: transparent;
  border: 1px solid ${(props) => (props.disabled ? "#ccc" : "#000")};
  color: ${(props) => (props.disabled ? "#ccc" : "black")};
  pointer-events: ${(props) => (props.disabled ? "none" : "auto")};
  cursor: ${(props) => (props.disabled ? "not-allowed" : "pointer")};
  font-size: 1rem;

  &:hover {
    color: ${(props) => (props.disabled ? "#ccc" : "#63b5da")};
  }

  & > svg {
    margin-right: 5%;
  }
`;
import styled from "styled-components";

export const TitleContainer = styled.div`
  text-align: flex-start;
  margin-top: 3%;
  margin-left: 5%;
  font-size: 5em; 
  font-weight: bold;
  color: #63b5da;
`;

export const ParentContainer = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 20px;
  width: 80%;
  margin: 5% auto;

  @media (max-width: 1200px) {
    margin-left: 0%;
  }
`;

export const ButtonRow = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 20%;
  margin-top: 20px;
`;

export const ButtonContainer = styled.form`
    display: flex;
    background: #ffffff;
    border: 4px solid #eeeeee;
    padding: 7px 10px;
    border-radius: 50px;
    width: clamp(260px, 16vw, 5%);
   
    
    & button {
        display: flex;
        padding: 10px 20px;
        border: none;
        border-radius: 100px;
        background: #fb4759;
        transition: .3s ease-in-out opacity, box-shadow;
        cursor: pointer;

        &:hover {
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
        }

`;

export const Button = styled.div`
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 20px 25px; 
    font-size: 1.2em; 
    width: 300px;
    border: none;
    border-radius: 100px;
    background: #fb4759;
    color: #424242;
    cursor: pointer;
    transition: 0.3s ease-in-out opacity, box-shadow;
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3); 

    &:hover {
        //transform: scale(1.05);
        background:rgb(254, 99, 115);
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1); 
    }
`;

export const DropDownParentContainer = styled.div`
  background-color: #ffff;  
  position: relative;
  width: 90%;
  height: 60%;
  left: 2.7%;
  top: -2%;
  overflow: visible;
  border-top: 8px dashed #80AD80;
  border-bottom: 8px dashed #80AD80;
  border-radius: 30px;
  margin-bottom: 1%;

  @media (max-width: 1200px) {
  left: 0%;
  }
`;


export const DropdownContainer = styled.div`
  position: relative;
  margin-left: 8%;
  margin-bottom: 3%;
  top: 20%;
  height: 10%;
  width: 40%;

  @media (max-width: 1600px) {
  top: 20%;
  margin-left: 3%;
  }
`;

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

export const ArrowIcon = styled.span`
  display: flex;
  align-items: center;
  transform: ${(props) => (props.isOpen ? "rotate(180deg)" : "rotate(0deg)")};
  transition: transform 0.3s ease;
`;

export const DropdownMenu = styled.ul`
  display: ${({ isOpen }) => (isOpen ? "block" : "none")};
  position: absolute;
  top: calc(100% + 5px);
  left: 0;
  background-color : rgba(255, 255, 255, 0.9);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  list-style: none;
  margin: 0;
  width: 1000px;
  padding: 5px 0;
  border: 1px solid #d1d1d1;
  border-radius: 10px;
  z-index: 1000;

  max-height: 300px;  /* 원하는 최대 높이로 조정 */
  overflow-y: auto;   /* 내용이 넘치면 수직으로 스크롤 가능 */
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

export const InformationContainer = styled.div`
  position: relative;
  display: column;  /* 세로 배치 */
  flex-direction: column;  /* 드롭다운 아이템 세로 정렬 */
  top: -60%;
  left: 56.5%;
  margin-bottom: 3%;
  height: 20%;
  width: 30%;

  @media (max-width: 1600px) {
  top: -50%;
  left: 60%;
  margin-bottom: 3%;
  }

  @media (max-width: 1400px) {
  top: -60%;
  margin-left: 0%;
  }
`;


export const InformationButton = styled.button`
  display: flex;
  justify-content: space-between;  
  align-items: center;
  gap: 8px;
  padding: 10px 15px;
  background: linear-gradient(to right, #eeeeee 50%, #63b5da 50%);  
  border: none;
  width: 80%;
  height: 45%;
  border-radius: 10px;
  cursor: pointer;
  font-size: 2em;
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


export const MyModal = styled.div`
  position: relative;
  display: flex;
  alignItem: center;
  left: 12%;
  width: 100%;
  height: 100%;
  top: 0.5%;

  @media (max-width: 1800px) {
  top: 0.5%;
  width: 98%;
  left: 12.7%;
  height: 100%;
  }

  @media (max-width: 1600px) {
  top: 1%;
  width: 97%;
  left: 13.5%;
  height: 100%;
  }

  @media (max-width: 1300px) {
  width: 96%;
  left: 14.5%;
  height: 105%;
  }

  @media (max-width: 1200px) {
  left: 11%;
  width: 100%;
  height: 105%;
  }
`;

export const IconContainer = styled.div`
  display: flex;
  background: #ffffff;
  border: 4px solid #eeeeee;
  padding: 15px 20px;
  border-radius: 100px;
  width: clamp(13vw, 16vw, 5vh);
  position: relative;
  margin-bottom: -5.5%;

  button {
    display: flex;
    padding: 10px 20px;
    border: none;
    border-radius: 100px;
    background: #fb4759;
    transition: 0.3s ease-in-out opacity, box-shadow;
    cursor: pointer;

    &:hover {
      box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
    }

    a {
      display: flex;
      justify-content: center;
      align-items: center;
      color: white;
      text-decoration: none;
      width: 100%;
      height: 100%;
    }

    &:hover {
      background: #1c1c1c;
      transform: scale(1.1);
    }

    &:active {
      background: #1c1c1c;
      transform: scale(0.95);
    }
  }

  &:hover::after {
    content: attr(data-tooltip);
    position: absolute;
    left: 50%;
    top: -20%;
    transform: translateX(-50%);
    background: rgba(0, 0, 0, 0.75);
    color: white;
    padding: 5px 10px;
    border-radius: 5px;
    font-size: 2em;
    white-space: nowrap;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    opacity: 0;
    visibility: hidden;
    transition: opacity 0.3s ease-in-out, visibility 0.3s ease-in-out;
  }

  &:hover::after {
    opacity: 1;
    visibility: visible;
  }
`;
import styled from "styled-components";

export const HomeContainer = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
  width: 100%;
  background: linear-gradient(135deg, #f6d365, #fda085);
  color: #ffffff;
  font-family: "Arial", sans-serif;
  text-align: center;
`;

export const DropDownParentContainer = styled.div`
  display: column; 
  flex-wrap: wrap;  
  background-color: rgba(50, 50, 50, 0.5);
  padding: 10px;
  padding-left: 30px;
  border-radius: 8px; 
  position: relative;
  width: 60%;
  height: 55%;
  left: 4%;
  
  @media (max-width: 1200px) {
  left: 0%;
  }
`;

export const TitleContainer = styled.div`
  text-align: flex-start;
  margin-top: 2%;
  margin-left: -2%;
  left: 50%;
  right: 50%;
  font-size: 2em; 
  font-weight: bold;
  color: #ffffff;
`;

export const DivContainer = styled.div`
  display: grid;
  grid-template-columns: repeat(2,0.2fr); /* 2열 */
  margin-top: 3%;
  margin-left: 10%;
  margin-right: -40%;
 justify-items: center; /* 자식 요소를 수평 중앙 정렬 */
  align-items: center; /* 자식 요소를 수직 중앙 정렬 */
`;

export const Div2Container = styled.div`
  display: grid;
  grid-template-columns: repeat(3, 0.2fr); /* 3열 */
  gap: 5px; /* 간격을 5px로 설정 */
  margin-top: 7%;
  margin-left: 20%;
  margin-right: 0%;
 justify-items: center; /* 자식 요소를 수평 중앙 정렬 */
  align-items: center; /* 자식 요소를 수직 중앙 정렬 */
`;


export const DropdownContainer = styled.div`
  position: relative;
  display: inline-block;
  top: 30%;
  min-width: 20%;
  margin-left: 90%;
`;

export const DropdownButton = styled.button`
  display: flex;
  width: 150px;
  align-items: center;
  gap: 8px;
  padding: 10px 15px;
  padding-right: 40px;
  background-color: transparent;
  border: 3px solid #ffffff;
  border-radius: 9px;
  cursor: pointer;
  font-size: 1em;
  color: #ffffff;
  transition: background-color 0.3s ease;

  &:hover {
    background-color: #e57f7b;  
  }

  button:disabled {
  background-color: #ccc; /* 비활성화 상태 색상 */
  cursor: not-allowed;
}

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
  padding: 5px 0;
  width: 300px;
  border: 1px solid #d1d1d1;
  border-radius: 18px;
  z-index: 1000;

 
  max-height: 150px;  /* 원하는 최대 높이로 조정 */
  overflow-y: auto;   /* 내용이 넘치면 수직으로 스크롤 가능 */
`;

export const DropdownItem = styled.li`
  padding: 10px;
  font-size: 0.9rem;
  color: #000000;
  cursor: pointer;
  transition: background 0.2s ease;
  

   &:hover {
   background-color: #e57f7b;  
  }

`;

export const InformationContainer = styled.div`
  position: relative;
  display: inline-block;
  height: 100%;
  margin-right: -90%;
`;


export const InformationButton = styled.button`
  display: flex;
  flex-direction: column;  /* 요소들을 세로로 배치 */
  // justify-content: center;  /* 세로 방향으로 중앙 정렬 */
  align-items: center;  /* 수평 방향으로 중앙 정렬 */
  gap: 10px;  /* 위아래 간격 */
  padding: 20px 4px;
  background-color: rgba(255, 255, 255, 0.5);
  border: none;
  width: 150px;
  height: 130px;  /* 높이를 내용에 맞게 자동으로 설정 */
  border-radius: 10px;
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
  cursor: pointer;
  font-size: 1em;
  color: #333;
  transition: background-color 0.3s ease;

  &:hover {
   background-color: #e57f7b;  
  }

  /* label 스타일 */
  & > label {
    flex-grow: 1;
    text-align: center;  /* 텍스트 중앙 정렬 */
    padding-left: 5px;
    padding-right: 5px;
  }

  /* input 스타일 */
  & > input {
    text-align: center;  /* 입력 값 중앙 정렬 */
  }
`;

export const ParentContainer = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 20px;
  width: 90%;
  margin-left: -3%;
  margin-top: 10%;
  margin-bottom: 1.5%;

  @media (max-width: 1200px) {
    margin-left: 0%;
  }
`;

export const ButtonRow = styled.div`
  display: grid;
  grid-template-columns: repeat(2, 1fr); /* 2열 */
  grid-auto-rows: 100px;;
  place-items: center;
  gap: 20%;
  margin-top: -7%;
`;

export const ButtonContainer = styled.form`
    display: flex;
    gap: 10px;

    background: transparent;
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
    padding: 20px 30px; 
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

export const SummaryText = styled.p`
  font-size: 1.0rem;
  width: 87%;
  background-color: #eeeeeeee;
  border-radius: 7px;
  padding-left: 40px;
  color: #555;
  line-height: 1.5;
  text-align: left;
  margin-top: 30px;
  margin-bottom: 40px;
  margin-left: -70px;
  max-height: 100%;  /* 원하는 최대 높이로 조정 */
  overflow-y: auto;   /* 내용이 넘치면 수직으로 스크롤 가능 */
  
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

export const ArrowIcon = styled.span`
  display: flex;
  align-items: center;
  transform: ${(props) => (props.isOpen ? "rotate(180deg)" : "rotate(0deg)")};
  transition: transform 0.3s ease;
`;

export const SelectBox = styled.div`
position: relative;
width: 200px;
padding: 8px;
border-radius: 12px;
background-color: #ffffff;
align-self: center;
box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
cursor: pointer;
&::before {
  content: "⌵";
  position: absolute;
  top: 1px;
  right: 8px;
  color: #49c181;
  font-size: 20px;
}
`;
export const Label = styled.label`
font-size: 14px;
margin-left: 4px;
text-align: center;
`;
export const SelectOptions = styled.ul`
position: absolute;
list-style: none;
top: 18px;
left: 0;
width: 100%;
overflow: hidden;
height: 90px;
max-height: ${(props) => (props.show ? "none" : "0")};
padding: 0;
border-radius: 8px;
background-color: #222222;
color: #fefefe;
`;
export const Option = styled.li`
font-size: 14px;
padding: 6px 8px;
transition: background-color 0.2s ease-in;
&:hover {
  background-color: #595959;
}
`;


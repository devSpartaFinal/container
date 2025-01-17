import styled from 'styled-components';

export const Background = styled.div`

    position: absolute;
    height: 100vh;
    width: 100vw;
    overflow: hidden;
    z-index: -1;
    background: #eeeeee;
`;

export const SessionHeaderContainer = styled.div`
  display: flex;
  flex-direction: column; 
  gap: 1000px;
  width: 17.05em;
  padding: 6vh 5px;
  background: #63b5da; /* 배경색상 */
  position: fixed; /* 화면 오른쪽에 고정 */
  top: 0;
  right: -0.9px;
  border-radius: 0px 15px 15px 0px;
  z-index: 1000;

  @media (max-width: 1200px) {
    display: none; 
  }
`;

export const SessionParentContainer = styled.div`
  display: flex;
  flex-direction: column; 
  width: 15%;
  height: 100%; /* 부모 컨테이너 높이를 기반으로 설정 */
  padding: 2% 0.2% 1% 0.2%;
  background: rgb(18, 32, 86);
  position: fixed; /* 화면 오른쪽에 고정 */
  top: 0;
  right: 0; /* 화면에 딱 맞게 고정 */
  // border-radius: 0px 15px 15px 0px;
  z-index: 1000; /* 다른 요소 위에 표시되도록 설정 */
  overflow-x: hidden;
  overflow-y: hidden;

  box-sizing: border-box;
  }
`;


export const SessionContainer = styled.div`
  display: flex;
  flex-direction: column; 
  gap: 1000px;
  width: 97%;
  color:rgb(0, 0, 0);
  height: 110%;
  padding: 1vh 5px;
  background:rgb(255, 255, 255);
  
  border-radius: 15px 15px 15px 15px;
  z-index: 1000;
  overflow-y: auto;
  overflow-x: hidden;
  transform: skew(0.05deg);
  --webkit-transform: translate3d(0, -50.4%, 0);
  -moz-transform: translate3d(0, -50.4%, 0);
  padding-right: 3px;


  scrollbar-width: 2px;
  scrollbar-gutter: stable;

  &::-webkit-scrollbar {
    margin-left:10px;
    width: 6px; 
  }
  &::-webkit-scrollbar-thumb {
    background: #b3d4e6; 
    border-radius: 4px;
  }
  &::-webkit-scrollbar-track {
    background: transparent; 
  }
`;

export const ChildSessionContainer = styled.div`
  border-radius: 8px;
  padding: 20px;
  width: 220px;
  height: 50px;
  margin-top: 0px;
  margin-bottom: 70px;
  max-width: 530px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);

  &:hover {
    background-color: #007BFF; /* 배경색이 파란색으로 변경 */
    color: #ffffff;            /* 텍스트가 흰색으로 변경 */
    cursor: pointer;           /* 마우스를 올리면 손가락 모양 */
  }

  left: 50%; /* SessionContainer 내에서 수평 중앙 */
  transform: translate(-50%, -50%); /* 정확히 중앙에 위치시키기 위한 보정 */
  z-index: 1001; 

  background-color: ${({ isActive }) => (isActive ? '#f0f0f0' : 'transparent')};
`;

export const BoxContainer = styled.div`
  border: 1px solid lightblue;
  width: 10px;
  height: 10px;
  border-radius: 8px;
  padding: 20px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
`;

export const HeaderTitle = styled.h4`
  font-size: 1.5rem;
  margin-top: -3%;
  margin-left: 5%;
  color:rgb(255, 255, 255);
`;

export const ButtonTitle = styled.button`
  font-size: 1.5rem;
  position: absolute;
  bottom: 10px;  
  left: 15px;    
  padding: 10px 20px;
  background-color: #007BFF;  
  color: #ffffff; 
  border:  #ffffff;
  border-radius: 5px;  
  cursor: pointer; 
  
  &:hover {
    background-color: #4fa3c7;  
  }

  &:focus {
    outline: none; 
  }
`;
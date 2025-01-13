import styled from 'styled-components';

export const SummaryContainer = styled.div`
  background-color: #fffffff;
  border-radius: 8px;
  padding: 20px;
  margin-top: -50px;
  margin-bottom: 50px;
  margin-left: -110px;
  max-width: 530px;
`;

export const SummaryTitle = styled.h3`
  font-size: 1.5rem;
  color: #333;
  margin-bottom: 0px;
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

export const LoadingContainer = styled.div`
  position: relative;
  display: column;
  z-index: 9999;
  text-align: center;
  top: 100%;
  margin-top: 1%;
  margin-bottom: -5%;
  background: black;
`;


export const SummaryGenerateContainer = styled.div`
  display: column;
  align-items: center;
  justify-content: center;
  width: 50%;
  height: 5%;
  margin-top: -12%;
  margin-left: 25%;

  @media (max-width: 1200px) {
  margin-left: 0%;
  }
`;

export const SummaryGenerateButton = styled.button`
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #eeeeee;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  font-size: 1em;
  color: #333;
  transition: background-color 0.3s ease;
  height: 5vh;
  width: 50%;
  margin-left: 25%;  

  &:hover {
    background-color: #e57f7b;  
  }
`;


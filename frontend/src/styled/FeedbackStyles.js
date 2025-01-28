import styled from "styled-components";

export const FeedbackContainer = styled.div`
  display: flex;
  height: 100%;
  width: 100%;
  background: linear-gradient(135deg, #f6d365, #fda085);
  overflow: hidden;
`;

export const FeedbackPanel = styled.div`
  display: flex;
  padding: 1% 2% 1% 2%;
  overflow-y: auto;
  height: 87%;
  background-color: #eeeeee;
  border-right: 1px solid #ddd;
  margin-top: 2.2%;
  margin-left: 7%;
  width: 67.5%;
  border-radius: 10px 0 0 10px;
  justify-content: center;

  @media (max-width: 1200px) {
  // margin-left: 2%;
  width: 72%;
`;

export const Button = styled.div`
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 20px 30px; 
    margin-left: 18%;
    font-size: 0.8em; 
    width: 50%;
    border: none;
    border-radius: 100px;
    background: #fb4759;
    color: white;
    cursor: pointer;
    transition: 0.3s ease-in-out opacity, box-shadow;
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3); 

    &:hover {
        //transform: scale(1.05);
        background:rgb(254, 99, 115);
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1); 
    }
`;

export const QuizListPanel = styled.div`
  padding: 1% 2% 1% 2%;
  height: 87%;
  overflow-y: auto;
  background-color: rgb(18, 32, 86);
  width: 16%;
  margin-top: 2.2%;
  border-radius: 0 10px 10px 0;
`;

export const FeedbackTitle = styled.h1`
  font-size: 2.2rem;
  color: white;
  margin-bottom: 20px;
`;

export const FeedbackDetails = styled.div`
  width: 100%;
  h3 {
    font-size: 1.5rem;
    font-weight: 900;
    margin: 1%;
  }

  ol {
  list-style-type: none;
  padding-left: 0;
  }

  hr {
  border: none;
  border-top: 3px dashed gray;
  }
`;

export const SpinnerContainer = styled.div`
  font-size: 2rem;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh; /* 화면 중앙에 배치하려면 높이를 설정 */
`;

export const Notice = styled.div`
  text-align: center;
  margin-top: 25%;
`
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

  @media (max-width: 1600px) {
  margin-leftt: 50%;
  width: 60%;

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
  font-size: 1.5rem;
  color: white;
  margin-bottom: 20px;
`;

export const FeedbackDetails = styled.div`
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
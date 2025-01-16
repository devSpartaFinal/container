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
  margin-left: 8%;
  width: 67.5%;
  border-radius: 15px 0 0 15px;
`;

export const QuizListPanel = styled.div`
  padding: 20px;
  padding-right: 30px;
  height: 87%;
  overflow-y: auto;
  background-color: #fff;
  max-width: 15%;
  margin-top: 2.2%;
  border-right: 15px solid #ddd;
  border-radius: 0 15px 15px 0;
`;

export const FeedbackTitle = styled.h1`
  font-size: 1.5rem;
  margin-bottom: 20px;
`;

export const FeedbackDetails = styled.div`
  h3 {
    font-size: 1.5rem;
    font-weight: 900;
    margin: 1%;
  }
  p {
    margin: 5px 0;
  }
  ul {
    list-style: disc;
    margin-left: 20px;
  }

  hr {
  border: none;
  border-top: 3px dashed gray;
  }
`;

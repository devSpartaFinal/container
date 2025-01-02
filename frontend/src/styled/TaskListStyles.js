import styled from "styled-components";

export const TaskContainer = styled.div`
  margin: 20px;
  padding: 20px;
  background-color: #f8f9fa;
  border-radius: 8px;
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
  width: 400px;
  max-width: 100%;
  text-align: center;
`;

export const TaskItem = styled.li`
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  margin: 5px 0;
  background-color: ${(props) => (props.done ? "#d4edda" : "#fff")};
  border: 1px solid #ced4da;
  border-radius: 4px;
  list-style: none;
  font-size: 16px;

  p {
    margin: 0;
  }
`;



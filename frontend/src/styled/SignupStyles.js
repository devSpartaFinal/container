import styled from "styled-components";

export const OutContainer = styled.div`
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 100%;
    height: 100%;
    overflow-x: hidden;
    overflow-y: hidden;
`;

export const Container = styled.div`
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 20px;
    width: 40%;
    left: 33%;
    background: rgba(255, 255, 255, 0.2);
    border-radius: 10px;
    overflow-x: hidden;
`;

export const Title = styled.h1`
    font-size: 1.5rem;
    color: #333;
`;

export const Form = styled.form`
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 20px;
`;

export const FieldContainer = styled.div`
    display: flex;
    flex-direction: column;
    gap: 5px;
`;

export const Label = styled.label`
    font-size: 0.9rem;
    font-weight: bold;
    color: #555;
`;

export const Input = styled.input`
    padding: 10px;
    font-size: 1rem;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;

    &:focus {
        border-color: #007BFF;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }
`;

export const Button = styled.button`
    padding: 10px;
    font-size: 1rem;
    background-color: #fb4759;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-align: center;
    margin-bottom: 20px;

    &:hover {
        background-color: #fd6779;
        color: white;
    }

    &:active {
        transform: scale(0.98);
    }
`;

export const Select = styled.select`
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
`;

export const TextArea = styled.textarea`
    width: 95%;
    padding: 10px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    resize: none;
`;

export const FieldContainerRow = styled.div`
    display: flex;
    gap: 20px; /* 두 필드 사이의 간격 */
    justify-content: space-between;
`;

export const FieldContainerCol = styled.div`
    flex: 1; /* 동일한 너비로 나눔 */
    display: flex;
    flex-direction: column;
`;

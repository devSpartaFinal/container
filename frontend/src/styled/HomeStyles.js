// src/styled/HomeStyles.js
import styled from "styled-components";

export const StyledOuterContainer = styled.div`
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 100%;  
    height: 100%;  
    margin: 0 auto;
    background: linear-gradient(135deg, #f6d365, #fda085);
    top: 50%;  
    left: 50%; 
    transform: translate(-50%, -50%);
    box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.15);
    position: absolute;
`;
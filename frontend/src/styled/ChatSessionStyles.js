import React, { useState } from "react";
import styled from "styled-components";

export const SessionListContainer = styled.div`
  flex: 1;
  padding: 5px;
  background: #eeeeee;
  display: flex;
  flex-direction: column;
  
`;

export const SessionList = styled.div`
  list-style: none;
  padding: 0;
  margin: 0;
  flex: 1;
  
`;

export const SessionItem = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  margin-bottom: 10px;
  background: ${({ isSelected }) => (isSelected ? "rgba(85, 162, 240, 0.8)" : "#fff")};
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  border-radius: 10px;
  cursor: pointer;
  position: relative;

  &:hover {
    background: rgba(102, 138, 169, 0.57);

    .exit-icon {
      display: flex;
    }
  }

  .session-content {
    flex: 1;
    display: flex;
    align-items: center;
  }

  .exit-icon {
    display: none;
    align-items: center;
    justify-content: center;
    color: #ff6b6b;
    cursor: pointer;
  }
`;



export const AddSessionButton = styled.button`
  padding: 10px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  &:hover {
    background-color: #0056b3;
  }
`;

export const ImageBox = styled.img`
  padding: 25px;
  background-color:rgb(85, 162, 240);
  color: #fff;
  display: flex;
  align-items: center;
  border-radius: 13px;
  cursor: pointer;
  color: #333;
`;

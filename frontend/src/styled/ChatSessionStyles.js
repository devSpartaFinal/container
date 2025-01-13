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

export const SessionItem = styled.li`
  padding: 10px 10px;
  margin-bottom: 10px;
  background:rgb(255, 255, 255);
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
  cursor: pointer;
  border-radius: 10px;
  background-color: ${({ isSelected }) => (isSelected ? "rgba(85, 162, 240, 0.8)" : "transparent")};
  font-weight: ${({ isSelected }) => (isSelected ? "bold" : "normal")};
  &:hover {
    background-color: rgba(102, 138, 169, 0.57);
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


import styled from "styled-components";

export const ProfileContainer = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  width: 40vw;
  background-color: #ffffff;
  padding: 2rem;
`;

export const ProfileCard = styled.div`
  background: #ffffff;
  border-radius: 15px;
  width: 100%;
  max-width: 400px;
  text-align: center;
`;

export const ProfileHeader = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-bottom: 2rem;
`;

export const Avatar = styled.div`
  background: #ea3a53;
  color: white;
  font-size: 2rem;
  font-weight: bold;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 80px;
  height: 80px;
  border-radius: 50%;
  margin-bottom: 1rem;
`;

export const Name = styled.h1`
  font-size: 1.5rem;
  color: #333333;
  margin: 0;
`;

export const Nickname = styled.p`
  font-size: 1rem;
  color: #fb6d7a;
  margin: 0.5rem 0 0;
`;

export const ProfileBody = styled.div`
  text-align: left;
  margin-top: 2rem;
`;

export const Field = styled.div`
  display: flex;
  justify-content: space-between;
  margin-bottom: 1rem;
`;

export const Label = styled.span`
  font-weight: bold;
  color: #333333;
`;

export const Value = styled.span`
  color: #666666;
`;

export const ButtonContainer = styled.div`
  display: flex;
  gap: 1rem;
  margin-top: 2rem;
  justify-content: center;
`;

export const ActionButton = styled.button`
  padding: 0.75rem 1.5rem;
  background-color: ${({ color }) => color || "#fb4759"};
  color: white;
  border: none;
  border-radius: 5px;
  font-size: 1rem;
  cursor: pointer;
  transition: background-color 0.3s;

  &:hover {
    background-color: ${({ hoverColor }) => hoverColor || "#fd6779"};
  }

  &:active {
    transform: scale(0.98);
  }
`;
import React from "react";
import styled from "styled-components";
import { AiFillHome, AiOutlineUser, AiOutlineLogin, AiOutlineLogout, AiOutlineUserAdd, AiOutlineMessage } from "react-icons/ai";


const Navigation = ({ isLoggedIn }) => {  

  const handleLogout = () => {
    localStorage.removeItem("accessToken");
    localStorage.removeItem("username");

    window.location.href = "/login";
  };

  return (
    <Nav>
      <ButtonContainer>
        <a href="/">
          <AiFillHome size="70%" title="Home" />
        </a>
      </ButtonContainer>
      
      {!isLoggedIn && (
        <ButtonContainer>
          <a href="/login">
            <AiOutlineLogin size="70%" title="Login" />
          </a>
        </ButtonContainer>
      )}
      
      {!isLoggedIn && (
        <ButtonContainer>
          <a href="/signup">
            <AiOutlineUserAdd size="70%" title="Sign Up" />
          </a>
        </ButtonContainer>
      )}
      
      {isLoggedIn && (
        <ButtonContainer>
          <a href="/profile">
            <AiOutlineUser size="70%" title="Profile" />
          </a>
        </ButtonContainer>
      )}

      {isLoggedIn && (
        <ButtonContainer>
          <a href="/chats">
            <AiOutlineMessage size="70%" title="Chats" />
          </a>
        </ButtonContainer>
      )}
      
      {isLoggedIn && (
        <ButtonContainer>
          <a href="#" onClick={handleLogout}>
            <AiOutlineLogout size="70%" title="Logout" />
          </a>
        </ButtonContainer>
      )}
    </Nav>
  );
};

const Nav = styled.nav`
  display: flex;
  flex-direction: column; 
  align-items: center;
  justify-content: center; 
  width: 11em;
  height: 77.1vh; 
  padding: 6vh 5px;
  background: #fb4759;
  position: fixed; /* 화면 왼쪽에 고정 */
  top: 0;
  left: 0;
  border-radius: 15px 0px 0px 15px;
  box-shadow: 5px 0px 15px rgba(0, 0, 0, 0.2);
  z-index: 1000;

  @media (max-width: 900px) {
    display: none; 
  }
`;



const ButtonContainer = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  width: 4rem;
  height: 4rem;
  background: ${({ active }) => (active ? "#3f3f3f" : "transparent")};
  border-radius: 50%;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  margin-bottom: 1rem; /* 버튼 간격 */

  a {
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
    text-decoration: none;
    width: 100%;
    height: 100%;
  }

  &:hover {
    background: #1c1c1c;
    transform: scale(1.1);
  }

  &:active {
    transform: scale(0.95);
  }

  @media (max-width: 820px) {
    margin-bottom: 0; /* 반응형에서는 버튼 간격 제거 */
    margin-right: 1rem; /* 가로 정렬 시 버튼 간격 */
  }
`;

export default Navigation;

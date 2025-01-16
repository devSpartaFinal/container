import React, { useState, useEffect } from "react";
import { useNavigate, useLocation } from "react-router-dom";
import {
  AiFillHome,
  AiOutlineMessage,
  AiOutlineRobot,
  AiOutlineLogin,
  AiOutlineUserAdd,
  AiOutlineUser,
  AiOutlineLogout,
  AiOutlineFileText,
  AiOutlineComment,
} from "react-icons/ai";
import { IoExtensionPuzzle } from "react-icons/io5";
import { MdOutlineGrading } from "react-icons/md";
import styled from "styled-components";
import { apiRequest } from "../apiRequest";

const Navigation = ({ isLoggedIn }) => {
  const location = useLocation();
  const isActive = (url) => location.pathname === url;
  const [activeButton, setActiveButton] = useState("");
  const [highlightLoginButton, setHighlightLoginButton] = useState(false);
  useEffect(() => {
    const currentPath = window.location.pathname;
    if (currentPath === "/home") setActiveButton("home");
    else if (currentPath === "/login") setActiveButton("login");
    else if (currentPath === "/signup") setActiveButton("signup");
    else if (currentPath === "/profile") setActiveButton("profile");
    else if (currentPath === "/riddle") setActiveButton("riddle");
    else if (currentPath === "/read") setActiveButton("read");
    else if (currentPath === "/logout") handleLogout();
    else if (currentPath === "/feedback") setActiveButton("feedback");
    else if (currentPath === "/multi_chat") setActiveButton("multi_chat");
  }, []);

  const handleLogout = async () => {
    document.cookie = "accessToken=; path=/; max-age=0; SameSite=Lax";
    document.cookie = "access=; path=/; max-age=0; SameSite=Lax";
    document.cookie = "username=; path=/; max-age=0; SameSite=Lax";
    document.cookie = "refresh=; path=/; max-age=0; SameSite=Lax";
    window.location.href = "/login";
  };

  const handleClick = (buttonName) => {
    setActiveButton(buttonName);

    if (
      !isLoggedIn &&
      (buttonName === "home" ||
        buttonName === "read" ||
        buttonName === "riddle")
    ) {
      setHighlightLoginButton(true);
    }
  };

  return (
    <Nav>
      <ButtonContainer
        data-tooltip="Read Riddle Home"
        active={isActive("/home")}
        onClick={() => handleClick("home")}
      >
        <a href={isLoggedIn ? "/home" : "/#"}>
          <AiFillHome size="70%" title="Home" />
        </a>
      </ButtonContainer>

      <ButtonContainer
        data-tooltip={
          isLoggedIn
            ? "퀴즈를 풀기 전 궁금증을 해소할 수 있는 Read 공간"
            : "로그인이 필요한 서비스입니다"
        }
        active={isActive("/read")}
        onClick={() => handleClick("read")}
      >
        <a href={isLoggedIn ? "/read" : "/#"}>
          <AiOutlineMessage size="70%" title="Read" />
        </a>
      </ButtonContainer>

      <ButtonContainer
        data-tooltip={
          isLoggedIn
            ? "배운 지식을 확인해 볼 수 있는 퀴즈 Riddle 공간"
            : "로그인이 필요한 서비스입니다"
        }
        active={isActive("/riddle")}
        onClick={() => handleClick("riddle")}
      >
        <a href={isLoggedIn ? "/riddle" : "/#"}>
          <IoExtensionPuzzle size="70%" title="Riddle" />
        </a>
      </ButtonContainer>

      <ButtonContainer
        data-tooltip={
          isLoggedIn
            ? "Riddle의 결과를 확인할 수 있는 공간"
            : "로그인이 필요한 서비스입니다"
        }
        active={isActive("/feedback")}
        onClick={() => handleClick("feedback")}
      >
        <a href={isLoggedIn ? "/feedback" : "/#"}>
          <MdOutlineGrading size="70%" title="feedback" />
        </a>
      </ButtonContainer>
      
      <ButtonContainer
        data-tooltip={
          isLoggedIn
            ? "여러 명의 사용자들과 함께 Riddle을 맞추는 공간!"
            : "로그인이 필요한 서비스입니다"
        }
        active={isActive("/multi_chat")}
        onClick={() => handleClick("multi_chat")}
      >
        <a href={isLoggedIn ? "/multi_chat" : "/#"}>
          <AiOutlineComment size="70%" title="multi_chat" />
        </a>
      </ButtonContainer>

      {!isLoggedIn && (
        <>
          <ButtonContainer
            data-tooltip="회원가입"
            active={isActive("/signup")}
            onClick={() => handleClick("signup")}
          >
            <a href="/signup">
              <AiOutlineUserAdd size="70%" title="Sign Up" />
            </a>
          </ButtonContainer>
          <ButtonContainer
            data-tooltip="로그인"
            active={isActive("/login") || highlightLoginButton}
            onClick={() => handleClick("login")}
            className={highlightLoginButton ? "highlight-effect" : ""}
            // style={{
            //   backgroundColor: highlightLoginButton ? "#FFEB3B" : "",
            //   transition: "background-color 0.3s ease",
            // }}
          >
            <a href="/login">
              <AiOutlineLogin size="70%" title="Login" />
            </a>
          </ButtonContainer>
        </>
      )}

      {isLoggedIn && (
        <>
          <ButtonContainer
            data-tooltip="사용자 프로필"
            active={isActive("/profile")}
            onClick={() => handleClick("profile")}
          >
            <a href="/profile">
              <AiOutlineUser size="70%" title="Profile" />
            </a>
          </ButtonContainer>

          <ButtonContainer
            data-tooltip="로그아웃"
            active={isActive("/logout")}
            onClick={() => handleClick("logout")}
          >
            <a href="/logout">
              <AiOutlineLogout size="70%" title="Logout" />
            </a>
          </ButtonContainer>
        </>
      )}
    </Nav>
  );
};

const Nav = styled.nav`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 6em;
  height: 88%;
  padding: 6vh 5px;
  background: #fb4759;
  position: fixed;
  top: 0;
  left: 0;
  // border-radius: 15px 0 0 15px;
  box-shadow: 5px 0 15px rgba(0, 0, 0, 0.2);
  z-index: 1000;

  @media (max-width: 1200px) {
    display: none;
  }
`;

const ButtonContainer = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  width: 4rem;
  height: 4rem;
  background: ${({ active }) => (active ? "#1c1c1c" : "transparent")};
  border-radius: 50%;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  margin-bottom: 1rem;

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
    background: #1c1c1c;
    transform: scale(0.95);
  }

  @media (max-width: 820px) {
    margin-bottom: 0;
    margin-right: 1rem;
  }

  &:hover::after {
    content: attr(data-tooltip);
    position: absolute;
    left: 4.5rem; /* 버튼 옆으로 표시 */
    top: 50%;
    transform: translateY(-50%);
    background: rgba(0, 0, 0, 0.3);
    color: white;
    padding: 0.5rem 1rem;
    border-radius: 0.5rem;
    font-size: 0.9rem;
    white-space: nowrap;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    opacity: 1;
    transition: opacity 0.3s ease-in-out;
  }

  &:hover::after {
    opacity: 1;
    visibility: visible;
  }
`;

export default Navigation;

import React, { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { Container } from "../styled/SignupStyles";
import { apiRequest } from "../apiRequest";

const GoogleLogin = ({ setIsLoggedIn }) => {
  const navigate = useNavigate();
  
  const fetchData = async () => {
    const code = new URL(window.location.href).searchParams.get("code");
    if (!code) return;
  
    window.history.replaceState({}, document.title, window.location.pathname);
  
    try {
      const response = await apiRequest.get(`/google/callback/?code=${code}`);
      const access = response.data.access;
      const username = response.data.username;
  
      document.cookie = `accessToken=${access}; path=/; max-age=86400; SameSite=Lax;`;
      document.cookie = `username=${username}; path=/; max-age=86400; SameSite=Lax;`;

  
      localStorage.setItem("accessToken", access);
      localStorage.setItem("username", username);
  
      setIsLoggedIn(true);
      navigate("/profile");
    } catch (error) {
      console.error("Error fetching access token:", error);
      navigate("/error");
    }
  };
  
  useEffect(() => {
    fetchData();
  }, []);
  
  
  return (
    <Container>
      <div> 구글 로그인 리다이렉트 페이지 입니다.<br></br>
      프로필 로딩까지 조금만 기다려주세요...
      </div>
    </Container>
  );
};

export default GoogleLogin;



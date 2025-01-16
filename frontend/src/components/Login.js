import React, { useState, useEffect } from "react";
import { Container, Title, Form, Input, Button, Label, FieldContainer } from "../styled/SignupStyles";
import { apiRequest }  from "../apiRequest"; 
import { useNavigate } from "react-router-dom"; 
import Cookies from "js-cookie";

const Login = ({ setIsLoggedIn, isLoggedIn }) => {
  const [formData, setFormData] = useState({
    username: "",
    password: "",
  });

  const [error, setError] = useState(""); 
  const [success, setSuccess] = useState(false);
  const navigate = useNavigate();

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value,
    });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    try {
      const response = await apiRequest.post("auth/", formData);
      console.log("Login Success:", response.data);

      const { token, user } = response.data;
      document.cookie = `accessToken=${token.access}; path=/; max-age=86400; SameSite=Lax`;
      // document.cookie = `refreshToken=${token.refresh}; path=/; max-age=86400;`;
      document.cookie = `username=${user.username}; path=/; max-age=86400; SameSite=Lax`;

      // 토큰 저장
      localStorage.setItem("accessToken", token.access);
      localStorage.setItem("username", user.username);

      setSuccess(true);
      setError(""); 
      setIsLoggedIn(true);  
      navigate("/profile");

    } catch (err) {
      console.error("Login Error:", err);
      setError("로그인에 실패했습니다. 아이디와 비밀번호를 다시 확인해주세요.");
    }
  };

  useEffect(() => {
    const stored_accessToken = localStorage.getItem("accessToken");
    const accessToken = Cookies.get("accessToken");
    if (stored_accessToken === accessToken && accessToken) setIsLoggedIn(true);
    else {
      setIsLoggedIn(false);
      return;
    }
    
    console.log("isLoggedIn:", isLoggedIn);
    if (!isLoggedIn) return; // 로그인하지 않았으면 실행하지 않음

    // console.log("컴포넌트 마운트됨, setInterval 설정 시작");

    // const checkTokenExpiry = () => {
    //   console.log("토큰 만료 체크 시작");
    //   const accessToken = document.cookie
    //     .split("; ")
    //     .find((row) => row.startsWith("accessToken="))
    //     ?.split("=")[1];

    //   if (accessToken) {
    //     const payload = JSON.parse(atob(accessToken.split(".")[1]));
    //     const expiryTime = payload.exp * 1000; // ms 단위로 변환
    //     const currentTime = Date.now();
    //     const remainingTime = expiryTime - currentTime;

    //     if (remainingTime < 5 * 60 * 1000) { // 5분 미만
    //       console.log("5분 미만, 토큰 갱신 필요");
    //       // Access Token 재발급 요청
    //       refreshAccessToken();
    //     }
    //   }
    // };

    // const refreshAccessToken = async () => {
    //   const refreshToken = document.cookie
    //     .split("; ")
    //     .find((row) => row.startsWith("refreshToken="))
    //     ?.split("=")[1];

    //   if (refreshToken) {
    //     try {
    //       const response = await apiRequest.post("refresh/", { refresh: refreshToken });
    //       const newAccessToken = response.data.access;
    //       document.cookie = `accessToken=${newAccessToken}; path=/; max-age=3600;`;
    //     } catch (err) {
    //       console.error("토큰 재발급 실패:", err);
    //     }
    //   }
    // };

    // const interval = setInterval(checkTokenExpiry, 60 * 1000); // 매 1분마다 실행
    // return () => {
    //   console.log("컴포넌트 언마운트됨, setInterval 해제");
    //   clearInterval(interval);
    // };
  }, [isLoggedIn]);

  return (
    <Container>
      <Title>로그인</Title>
      <Form onSubmit={handleSubmit}>
        {/* ID */}
        <FieldContainer>
          <Label htmlFor="username">ID</Label>
          <Input
            type="text"
            id="username"
            name="username"
            value={formData.username}
            onChange={handleChange}
            placeholder="Enter your ID"
            required
          />
        </FieldContainer>

        {/* Password */}
        <FieldContainer>
          <Label htmlFor="password">Password</Label>
          <Input
            type="password"
            id="password"
            name="password"
            value={formData.password}
            onChange={handleChange}
            placeholder="Enter your password"
            required
          />
        </FieldContainer>

        {/* Submit Button */}
        <Button type="submit">로그인</Button>
        {/* 회원가입 버튼 */}
        <Button
          type="button"
          onClick={() => navigate("/signup")}
          style={{ marginTop: "-20px", backgroundColor: "gray" }}
        >
          회원가입
        </Button>
      </Form>

      {/* Success Message */}
      {error && <p style={{ color: "red" }}>{error}</p>}
      {success && <p>로그인에 성공했습니다!</p>}
    </Container>
  );
};

export default Login;
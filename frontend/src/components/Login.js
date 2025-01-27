import React, { useState, useEffect } from "react";
import { Container, Title, Form, Input, Button, Label, FieldContainer } from "../styled/SignupStyles";
import { apiRequest }  from "../apiRequest"; 
import { useNavigate } from "react-router-dom"; 
import Cookies from "js-cookie";
import { FaGoogle } from "react-icons/fa";
import logo from '../assets/logo.png'



const Login = ({ setIsLoggedIn, isLoggedIn }) => {
  useEffect(() => {
            document.title = "ReadRiddle - Login";
          }, []);

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

      const { token, user } = response.data;
      document.cookie = `accessToken=${token.access}; path=/; max-age=86400; SameSite=Lax`;
      // document.cookie = `refreshToken=${token.refresh}; path=/; max-age=86400;`;
      document.cookie = `username=${user.username}; path=/; max-age=86400; SameSite=Lax`;

      // 토큰 저장
      localStorage.setItem("accessToken", token.access);
      localStorage.setItem("username", user.username);
      localStorage.setItem("lastLoggedInAt", JSON.stringify(new Date()));

      setSuccess(true);
      setError(""); 
      setIsLoggedIn(true);  
      navigate("/profile");

    } catch (err) {
      console.error("Login Error:", err.message);
      setError("로그인에 실패했습니다. 아이디와 비밀번호를 다시 확인해주세요.");
    }
  };

  const handleGoogleLogin = async(e) => {

    try{
      const response = await apiRequest.get("/google/");
      const {auth_url} = response.data;
      window.location.href = auth_url;
    }
    catch (err)
    {
      alert("구글 로그인 요청을 실패했습니다");
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
    
    if (!isLoggedIn) return; 
  }, [isLoggedIn]);

  return (
    <Container>

      <img className="image" alt="title" src={logo}/>

      <Button
        onClick={handleGoogleLogin}
        style={{
          width: "100%",
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          backgroundColor: "#4285F4",
          color: "white",
        }}
      >
        <FaGoogle style={{ marginRight: "8px" }} />
        Google로 로그인
      </Button>

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
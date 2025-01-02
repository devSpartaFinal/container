import React, { useState } from "react";
import { Container, Title, Form, Input, Button, Label, FieldContainer } from "../styled/SignupStyles";
import apiRequest from "../apiRequest"; 
import { useNavigate } from "react-router-dom"; 

const Login = ({ setIsLoggedIn }) => {
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
      const response = await apiRequest.post("login/", formData);
      console.log("Login Success:", response.data);

      const { token, user } = response.data;
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
          <div>
            {error && (
              <p style={{ color: "red" }}>
                {error}
              </p>
            )}
          </div>
        </FieldContainer>

        {/* Submit Button */}
        <Button type="submit">로그인</Button>
      </Form>

      {/* Success Message */}
      {success && <p>로그인에 성공했습니다!</p>}
    </Container>
  );
};

export default Login;

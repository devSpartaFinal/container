import React, { useState } from "react";
import {
  OutContainer,
  Container,
  Title,
  Form,
  Input,
  Button,
  Label,
  FieldContainer,
  Select,
  TextArea,
  FieldContainerRow,
  FieldContainerCol,
} from "../styled/SignupStyles";
import { useNavigate } from "react-router-dom";
import { apiRequest } from "../apiRequest";

const Signup = () => {
  const navigate = useNavigate();

  const [formData, setFormData] = useState({
    username: "",
    password: "",
    confirm_password: "",
    nickname: "",
    birth_date: "",
    email: "",
    first_name: "",
    last_name: "",
    gender: "",
    intro: "",
  });

  const [error, setError] = useState("");
  const [success, setSuccess] = useState(false);
  const [showModal, setShowModal] = useState(false);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value,
    });
  };

  const validatePassword = (password) => {
    const passwordErrors = [];

    if (password.length < 8) {
      passwordErrors.push("비밀번호는 최소 8자 이상이어야 합니다.");
    }
    if (!/[A-Z]/.test(password)) {
      passwordErrors.push("비밀번호는 최소한 하나의 대문자를 포함해야 합니다.");
    }
    if (!/[a-z]/.test(password)) {
      passwordErrors.push("비밀번호는 최소한 하나의 소문자를 포함해야 합니다.");
    }
    if (!/[0-9]/.test(password)) {
      passwordErrors.push("비밀번호는 최소한 하나의 숫자를 포함해야 합니다.");
    }
    if (!/[!@#$%^&*(),.?\":{}|<>]/.test(password)) {
      passwordErrors.push(
        "비밀번호는 최소한 하나의 특수문자를 포함해야 합니다."
      );
    }

    return passwordErrors;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    // 비밀번호 검증
    const passwordErrors = validatePassword(formData.password);
    if (passwordErrors.length > 0) {
      setError(passwordErrors);
      return;
    }

    // 비밀번호 일치 여부 확인
    if (formData.password !== formData.confirm_password) {
        setError(["비밀번호가 서로 일치하지 않습니다."]);
        return;
    }

    // confirm_password 필드를 제외한 데이터를 백엔드로 전송
    const { confirm_password, ...userData } = formData;

    try {
      const response = await apiRequest.post("/", userData);
      console.log("Signup Success:", response.data);

      setSuccess(true);
      setShowModal(true);
      setTimeout(() => {
        setShowModal(false);
      }, 2000); 
      navigate("/after_email");

      // const login_response = await apiRequest.post("login/", formData);
      // console.log("Login Success:", login_response.data);

      // const { token, user } = response.data;
      // localStorage.setItem("accessToken", token.access);
      // localStorage.setItem("username", user.username);
    } catch (err) {
      console.error("Signup Error:", err);
      // 서버 응답에서 에러 메시지 추출
      const serverError = err.response?.data?.detail || "회원정보 업데이트에 실패했습니다.";
      setError([serverError]); // 서버에서 받은 에러 메시지를 상태로 설정
    }
  };

  return (
    <OutContainer>
      <Container>
        <Title>회원가입</Title>
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
            <Input
              type="password"
              id="confirm_password"
              name="confirm_password"
              value={formData.confirm_password || ""} // 초기값이 없을 경우 처리
              onChange={handleChange}
              placeholder="Confirm your password"
              required
              />
            <div>
              {error && error.length > 0 && (
                <p style={{ color: "red" }}>
                  {error.map((err, index) => (
                    <span key={index}>
                      {err}
                      <br />
                    </span>
                  ))}
                </p>
              )}
            </div>
          </FieldContainer>

          {/* Nickname */}
          <FieldContainer>
            <Label htmlFor="nickname">Nickname</Label>
            <Input
              type="text"
              id="nickname"
              name="nickname"
              value={formData.nickname}
              onChange={handleChange}
              placeholder="Enter your nickname"
            />
          </FieldContainer>

          {/* Birth Date */}
          <FieldContainer>
            <Label htmlFor="birth_date">Birth Date</Label>
            <Input
              type="date"
              id="birth_date"
              name="birth_date"
              value={formData.birth_date}
              onChange={handleChange}
              required
            />
          </FieldContainer>

          {/* Email */}
          <FieldContainer>
            <Label htmlFor="email">Email</Label>
            <Input
              type="email"
              id="email"
              name="email"
              value={formData.email}
              onChange={handleChange}
              placeholder="Enter your email"
              required
            />
          </FieldContainer>

          {/* First Name & Last Name */}
          <FieldContainerRow>
            {/* First Name */}
            <FieldContainerCol>
              <Label htmlFor="first_name">First Name</Label>
              <Input
                type="text"
                id="first_name"
                name="first_name"
                value={formData.first_name}
                onChange={handleChange}
                placeholder="Enter your first name"
                required
              />
            </FieldContainerCol>

            {/* Last Name */}
            <FieldContainerCol>
              <Label htmlFor="last_name">Last Name</Label>
              <Input
                type="text"
                id="last_name"
                name="last_name"
                value={formData.last_name}
                onChange={handleChange}
                placeholder="Enter your last name"
                required
              />
            </FieldContainerCol>
          </FieldContainerRow>

          {/* Gender */}
          <FieldContainer>
            <Label htmlFor="gender">Gender</Label>
            <Select
              id="gender"
              name="gender"
              value={formData.gender}
              onChange={handleChange}
              required
            >
              <option value="">Select your gender</option>
              <option value="M">Male</option>
              <option value="F">Female</option>
              <option value="O">Other</option>
            </Select>
          </FieldContainer>

          {/* Intro */}
          <FieldContainer>
            <Label htmlFor="intro">Introduction</Label>
            <TextArea
              id="intro"
              name="intro"
              value={formData.intro}
              onChange={handleChange}
              placeholder=""
              rows="4"
            />
          </FieldContainer>

          {/* Submit Button */}
          
          <Button type="submit">
            이메일 인증하기
          </Button>

          {/* 이메일 인증 후 확인 모달 */}
          {showModal && (
            <div style={modalStyles}>
              <div style={modalContentStyles}>
                <h2>이메일 인증</h2>
                <p>이메일을 확인해주세요!</p>
                <button onClick={() => setShowModal(false)} style={closeButtonStyles}>
                  닫기
                </button>
              </div>
            </div>
          )}
        

        </Form>

        {/* Success or Error Message */}
        {success && <p>회원가입이 성공적으로 완료되었습니다!</p>}
      </Container>
    </OutContainer>
    
  );
};

const modalStyles = {
  position: 'fixed',
  top: 0,
  left: 0,
  right: 0,
  bottom: 0,
  backgroundColor: 'rgba(0, 0, 0, 0.5)',
  display: 'flex',
  justifyContent: 'center',
  alignItems: 'center',
  zIndex: 1000,
};

const modalContentStyles = {
  backgroundColor: 'white',
  padding: '20px',
  borderRadius: '8px',
  textAlign: 'center',
  width: '300px',
};

const closeButtonStyles = {
  marginTop: '10px',
  backgroundColor: '#e57f7b',
  color: 'white',
  border: 'none',
  borderRadius: '5px',
  padding: '8px 16px',
  cursor: 'pointer',
};

export default Signup;

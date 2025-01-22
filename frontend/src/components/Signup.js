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
import logo from '../assets/logo.png'
import { useEffect } from "react";

const Signup = () => {
  useEffect(() => {
          document.title = "ReadRiddle - Signup";
        }, []);
  
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
  const [modalMessage, setModalMessage] = useState("회원가입 인증 중...");

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value,
    });

    if (error && error[name]) {
      setError((prevErrors) => {
        const newErrors = { ...prevErrors };
        delete newErrors[name];
        return newErrors;
      });
    }
  };

  const validateUsername = (username) => {
    const usernameRegex = /^[a-zA-Z0-9!^*]+$/;
    if (!usernameRegex.test(username)) {
      return "ID는 영문, 숫자, 또는 특수기호(!, ^, *)만 포함할 수 있습니다.";
    }
    return "";
  };

  const validatePassword = (password) => {
    const passwordErrors = [];

    if (password.length < 8) {
      passwordErrors.push("비밀번호는 최소 8자 이상이어야 합니다.");
    }

    if (!/[A-Za-z]/.test(password)) {
      passwordErrors.push("비밀번호는 영문을 포함해야 합니다.");
    }

    if (!/[0-9]/.test(password)) {
      passwordErrors.push("비밀번호는 숫자를 포함해야 합니다.");
    }

    const specialCharRegex = /[!^*]/;
    if (specialCharRegex.test(password) && !/[!^*]/.test(password)) {
      passwordErrors.push("비밀번호는 특수기호(!, ^, *)를 포함할 수 있습니다.");
    }

    return passwordErrors;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    const usernameError = validateUsername(formData.username);
    if (usernameError) {
      setError({ username: usernameError });
      return;
    }

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
      setShowModal(true);
      setModalMessage("회원가입 인증 중...");
      const response = await apiRequest.post("/", userData);
      console.log("Signup Success:", response.data);

      setTimeout(() => {
        setShowModal(false);
        setModalMessage("회원가입이 성공적으로 완료되었습니다!");
        setSuccess(true); 
      }, 2000);
      navigate("/after_email");

    } catch (err) {
      console.error("Signup Error:", err);
      const serverError = err.response.data || "회원정보 업데이트에 실패했습니다.";
      setError(serverError);
    }
  };

  const isFormInvalid = () => {
    return Object.keys(error).length > 0 || error.length > 0;
  };

  return (
    <OutContainer>
      <Container>
        <img className="image" alt="title" src={logo}/>
        <Form onSubmit={handleSubmit}>
          {/* ID */}
          <FieldContainer>
            <Label htmlFor="username">ID
              <span style={{ color: "red" }}>*</span>
            </Label>
            <Input
              type="text"
              id="username"
              name="username"
              value={formData.username}
              onChange={handleChange}
              placeholder="ID는 영문, 숫자, 특수기호(!, ^, *)만 포함할 수 있습니다"
              required
            />
            {error.username && <p style={{ color: "red" }}>{error.username}</p>}
          </FieldContainer>

          {/* Password */}
          <FieldContainer>
            <Label htmlFor="password">Password
              <span style={{ color: "red" }}>*</span>
            </Label>
            <Input
              type="password"
              id="password"
              name="password"
              value={formData.password}
              onChange={handleChange}
              placeholder="비밀번호는 8자 이상의 영문과 숫자 조합이어야 하며, 특수기호(!, ^, *)를 포함할 수 있습니다"
              required
            />
            <Input
              type="password"
              id="confirm_password"
              name="confirm_password"
              value={formData.confirm_password || ""}
              onChange={handleChange}
              placeholder="비밀번호 확인"
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
            <Label htmlFor="nickname">Nickname
              <span style={{ color: "red" }}>*</span>
            </Label>
            <Input
              type="text"
              id="nickname"
              name="nickname"
              value={formData.nickname}
              onChange={handleChange}
              placeholder="닉네임을 입력해주세요"
            />
            {error.nickname && <p style={{ color: "red" }}>{error.nickname}</p>}
          </FieldContainer>

          {/* Birth Date */}
          <FieldContainer>
            <Label htmlFor="birth_date">Birth Date
              <span style={{ color: "red" }}>*</span>
            </Label>
            <Input
              type="date"
              id="birth_date"
              name="birth_date"
              value={formData.birth_date}
              onChange={handleChange}
              required
            />
            {error.birth_date && <p style={{ color: "red" }}>{error.birth_date}</p>}
            <p style={{ fontSize: "12px", color: "gray" }}>
              생년월일은 오늘 날짜로 7세에서 150세 사이여야 합니다.
            </p>
          </FieldContainer>

          {/* Email */}
          <FieldContainer>
            <Label htmlFor="email">Email
              <span style={{ color: "red" }}>*</span>
            </Label>
            <Input
              type="email"
              id="email"
              name="email"
              value={formData.email}
              onChange={handleChange}
              placeholder="이메일을 입력해주세요"
              required
            />
            {error.email && <p style={{ color: "red" }}>{error.email}</p>}
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
                placeholder="이름을 입력해주세요"
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
                placeholder="성을 입력해주세요"
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
            >
              <option value="">성별을 선택해주세요</option>
              <option value="M">남성</option>
              <option value="F">여성</option>
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
              placeholder="자기소개를 입력해주세요"
              rows="4"
            />
          </FieldContainer>

          {/* Submit Button */}
          <Button type="submit" disabled={isFormInvalid()}>
            이메일 인증하기
          </Button>

          {/* 이메일 인증 후 확인 모달 */}
          {showModal && (
            <div style={modalStyles}>
              <div style={modalContentStyles}>
                <h2>{modalMessage}</h2>
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

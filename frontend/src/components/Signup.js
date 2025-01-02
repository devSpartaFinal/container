import React, { useState } from "react";
import { Container, Title, Form, Input, Button, Label, FieldContainer } from "../styled/SignupStyles";
import { useNavigate } from "react-router-dom";
import apiRequest from "../apiRequest"; 



const Signup = () => {

    const navigate = useNavigate();

    const [formData, setFormData] = useState({
        username: "",
        password: "",
        nickname: "",
        birth_date: "",
        email: "",
        first_name: "",
        last_name: "",
    });

    const [error, setError] = useState(""); 
    const [success, setSuccess] = useState(false);

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
            passwordErrors.push("비밀번호는 최소한 하나의 특수문자를 포함해야 합니다.");
        }
    
        return passwordErrors;
    };
    
    const handleSubmit = async (e) => {
        e.preventDefault();
    
        const passwordErrors = validatePassword(formData.password);
        if (passwordErrors.length > 0) {
            setError(passwordErrors);
            return;
        }
    
        try {
            const response = await apiRequest.post("/", formData);
            console.log("Signup Success:", response.data);
    
            setSuccess(true);
            navigate("/login");

            // const login_response = await apiRequest.post("login/", formData);
            // console.log("Login Success:", login_response.data);

            // const { token, user } = response.data;
            // localStorage.setItem("accessToken", token.access);
            // localStorage.setItem("username", user.username); 
            
            

        } catch (err) {
            console.error("Signup Error:", err);
            setError(["회원가입에 실패했습니다. 다시 시도해주세요."]); 
        }
    };
    

    return (
        
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

                {/* First Name */}
                <FieldContainer>
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
                </FieldContainer>

                {/* Last Name */}
                <FieldContainer>
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
                </FieldContainer>

                {/* Submit Button */}
                <Button type="submit">회원가입 완료</Button>
            </Form>

            {/* Success or Error Message */}
            {success && <p>회원가입이 성공적으로 완료되었습니다!</p>}
        </Container>
    );
};

export default Signup;

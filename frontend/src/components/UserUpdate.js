import React, { useState, useEffect } from "react";
import { Container, Title, Form, Input, Button, Label, FieldContainer } from "../styled/SignupStyles";
import apiRequest from "../apiRequest";

const UpdateProfile = () => {
    const [formData, setFormData] = useState({
        username: "",
        password: "",
        nickname: "",
        birth_date: "",
        email: "",
        first_name: "",
        last_name: "",
    });

    const [error, setError] = useState([]); 
    const [success, setSuccess] = useState(false);

    useEffect(() => {
        const loadUserData = () => {
            const userID = localStorage.getItem("username");
            const accessToken = localStorage.getItem("accessToken");

            if (userID && accessToken) {
                apiRequest
                    .get(`${userID}`, {
                        headers: {
                            Authorization: `Bearer ${accessToken}`,
                        },
                    })
                    .then((response) => {
                        const userData = response.data;
                        setFormData({
                            username: userData.username,
                            nickname: userData.nickname,
                            birth_date: userData.birth_date,
                            email: userData.email,
                            first_name: userData.first_name,
                            last_name: userData.last_name,
                        });
                    })
                    .catch((err) => {
                        console.error("Error loading user data:", err);
                        setError(["사용자 정보를 불러오는데 실패했습니다."]);
                    });
            }
        };

        loadUserData();
    }, []);

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({
            ...formData,
            [name]: value,
        });
    };

    const validatePassword = (password) => {
        const passwordErrors = [];
        
        if (password && password.length < 8) {
            passwordErrors.push("비밀번호는 최소 8자 이상이어야 합니다.");
        }
        if (password && !/[A-Z]/.test(password)) {
            passwordErrors.push("비밀번호는 최소한 하나의 대문자를 포함해야 합니다.");
        }
        if (password && !/[a-z]/.test(password)) {
            passwordErrors.push("비밀번호는 최소한 하나의 소문자를 포함해야 합니다.");
        }
        if (password && !/[0-9]/.test(password)) {
            passwordErrors.push("비밀번호는 최소한 하나의 숫자를 포함해야 합니다.");
        }
        if (password && !/[!@#$%^&*(),.?\":{}|<>]/.test(password)) {
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
            const userID = localStorage.getItem("username");
            const accessToken = localStorage.getItem("accessToken");
    
            const response = await apiRequest.put(`${userID}`, formData, {
                headers: {
                    Authorization: `Bearer ${accessToken}`,
                },
            });
    
            console.log("Profile Update Success:", response.data);
    
            setSuccess(true);
            setError([]); 
        } catch (err) {
            console.error("Profile Update Error:", err);
            setError(["회원 정보 업데이트에 실패했습니다. 다시 시도해주세요."]);
        }
    };
    

    return (
        <Container>
            <Title>회원 정보 수정</Title>
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
                        placeholder="Enter your new password"
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
                    />
                </FieldContainer>

                {/* Submit Button */}
                <Button type="submit">회원 정보 수정 완료</Button>
            </Form>

            {/* Success or Error Message */}
            {success && <p>회원 정보가 성공적으로 수정되었습니다!</p>}
        </Container>
    );
};

export default UpdateProfile;

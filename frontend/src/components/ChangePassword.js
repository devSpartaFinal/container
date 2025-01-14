import React, { useState, useEffect } from "react";
import {
    Container,
    Title,
    Form,
    Input,
    Button,
    Label,
    FieldContainer,
} from "../styled/SignupStyles";
import { useNavigate } from "react-router-dom";
import { apiRequest }  from "../apiRequest";
import { useAuth } from "../context/AuthContext";

const UpdateProfile = () => {
    const { user, setUser, loading } = useAuth(); 
    const navigate = useNavigate();

    const [formData, setFormData] = useState({
        id : user.id,
        username: user.username,
        present_password: "",
        new_password: "",
        confirm_password: "",
    });

    const [error, setError] = useState([]); 
    const [success, setSuccess] = useState(false);
    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({
            ...formData,
            [name]: value,
        });
    };

    const validatePassword = (new_password) => {
        const passwordErrors = [];
        
        if (new_password.length === 0) {
            passwordErrors.push("새로운 비밀번호를 입력해주세요.");
        }
        if (new_password && new_password.length < 8) {
            passwordErrors.push("비밀번호는 최소 8자 이상이어야 합니다.");
        }
        if (new_password && !/[A-Z]/.test(new_password)) {
            passwordErrors.push("비밀번호는 최소한 하나의 대문자를 포함해야 합니다.");
        }
        if (new_password && !/[a-z]/.test(new_password)) {
            passwordErrors.push("비밀번호는 최소한 하나의 소문자를 포함해야 합니다.");
        }
        if (new_password && !/[0-9]/.test(new_password)) {
            passwordErrors.push("비밀번호는 최소한 하나의 숫자를 포함해야 합니다.");
        }
        if (new_password && !/[!@#$%^&*(),.?\":{}|<>]/.test(new_password)) {
            passwordErrors.push("비밀번호는 최소한 하나의 특수문자를 포함해야 합니다.");
        }
    
        return passwordErrors;
    };
    

    const handleSubmit = async (e) => {
        e.preventDefault();
        
        const passwordErrors = validatePassword(formData.new_password);
        if (passwordErrors.length > 0) {
            setError(passwordErrors);
            return;
        }
        try {
            await apiRequest.put("password/", formData);
            setSuccess(true);
            alert("비밀번호가 성공적으로 변경되었습니다!");
            navigate("/login");
        } catch (err) {
            console.error("Password Update Error:", err);
            // 서버 응답에서 에러 메시지 추출
            const serverError = err.response?.data?.detail || "비밀번호 변경에 실패했습니다.";
            setError([serverError]); // 서버에서 받은 에러 메시지를 상태로 설정
        }
    };
    

    return (
        <Container>
            <Title>비밀번호 변경</Title>
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
                        id="present_password"
                        name="present_password"
                        value={formData.present_password}
                        onChange={handleChange}
                        placeholder="Enter your password"
                    />
                </FieldContainer>

                {/* New Password */}
                <FieldContainer>
                    <Label htmlFor="password">New Password</Label>
                    <Input
                        type="password"
                        id="new_password"
                        name="new_password"
                        value={formData.new_password}
                        onChange={handleChange}
                        placeholder="Enter your new password"
                    />
                    <Input
                        type="password"
                        id="confirm_password"
                        name="confirm_password"
                        value={formData.confirm_password}
                        onChange={handleChange}
                        placeholder="Confirm your new password"
                    />
                    
                </FieldContainer>
                
                {/* Submit Button */}
                <Button type="submit">비밀번호 변경</Button>
            </Form>
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
            {/* Success or Error Message */}
            {success && <p>비밀번호가 성공적으로 변경되었습니다!</p>}
        </Container>
    );
};

export default UpdateProfile;

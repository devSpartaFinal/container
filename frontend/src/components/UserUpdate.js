import React, { useState, useEffect } from "react";
import {
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
import { apiRequest }  from "../apiRequest";
import { useAuth } from "../context/AuthContext";

const UpdateProfile = () => {
    const { user, setUser, loading } = useAuth(); 
    const navigate = useNavigate();

    const [formData, setFormData] = useState({
        id : user.id,
        username: user.username,
        nickname: user.nickname,
        birth_date: user.birth_date,
        email: user.email,
        first_name: user.first_name,
        last_name: user.last_name,
        gender: user.gender,
        intro: user.intro,
        is_social : user.is_social
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

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await apiRequest.put(`${user.username}`, formData);
    
            setSuccess(true);
            alert("회원 정보가 성공적으로 수정되었습니다!");
            navigate("/profile");
        } catch (err) {
            console.error("Profile Update Error:", err);
            // 서버 응답에서 에러 메시지 추출
            const serverError = err.response?.data?.detail || "회원정보 업데이트에 실패했습니다.";
            setError([serverError]); // 서버에서 받은 에러 메시지를 상태로 설정
        }
    };

    return (

        
        <Container>
            <Title>회원 정보 수정</Title>
            <Form onSubmit={handleSubmit}>
                {/* ID */}
                {/* {!user?.is_social && (
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
                )} */}

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
                    <Label htmlFor="intro">자기소개를 입력해주세요</Label>
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
                <Button type="submit">회원 정보 수정 완료</Button>
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
            {success && <p>회원 정보가 성공적으로 수정되었습니다!</p>}
        </Container>
    );
};

export default UpdateProfile;
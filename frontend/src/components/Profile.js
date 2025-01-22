import React from "react";
import { useNavigate } from "react-router-dom";
import { useAuth } from "../context/AuthContext";
import {
  ProfileContainer,
  ProfileBody,
  ProfileHeader,
  ProfileCard,
  Nickname,
  Avatar,
  ActionButton,
  Label,
  Field,
  Value,
  Name,
  ButtonContainer,
} from "../styled/ProfileStyles";
import { useEffect } from "react";

const Profile = () => {
  useEffect(() => {
        document.title = "ReadRiddle - Profile";
      }, []);

  const { user, loading } = useAuth();
  const navigate = useNavigate();

  if (!user) {
    navigate("/login");
    return null;
  }

  return (
    <ProfileContainer>
      <ProfileCard>
        <ProfileHeader>
          <Avatar>{user.username.charAt(0).toUpperCase()}</Avatar>
          <Name>{`${user.username}`}</Name>
          <Nickname>{user.email}</Nickname>
        </ProfileHeader>
        <ProfileBody>
          <Field>
            <Label>닉네임:</Label>
            <Value>{user.nickname}</Value>
          </Field>
          <Field>
            <Label>이름:</Label>
            <Value>{`${user.first_name} ${user.last_name}`}</Value>
          </Field>
          <Field>
            <Label>생년월일:</Label>
            <Value>{user.birth_date}</Value>
          </Field>
          <Field>
            <Label>성별:</Label>
            <Value>{user.gender}</Value>
          </Field>
          <Field>
            <Label>소개글:</Label>
            <Value>{user.intro}</Value>
          </Field>
          <Field>
            <Label>가입 날짜:</Label>
            <Value>
              {new Date(user.created_at).toLocaleDateString("ko-KR")}
            </Value>
          </Field>
        </ProfileBody>
        <ButtonContainer>
          <ActionButton onClick={() => navigate("/update")}>
            Edit Profile
          </ActionButton>
          <ActionButton onClick={() => navigate("/change_password")}>
            Change Password
          </ActionButton>
        </ButtonContainer>
      </ProfileCard>
    </ProfileContainer>
  );
};

export default Profile;

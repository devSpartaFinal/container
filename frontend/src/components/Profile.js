import React, { useEffect, useState } from "react";
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
  Modal,
  ModalContent,
  ModalOverlay,
} from "../styled/ProfileStyles";
import master from "../assets/master.png";
import bronze from "../assets/bronze.png";
import silver from "../assets/silver.png";
import sapphire from "../assets/sapphire.png";
import ruby from "../assets/ruby.png";
import gold from "../assets/gold.png";

const Profile = () => {
  const [isModalOpen, setIsModalOpen] = useState(false);

  useEffect(() => {
    document.title = "ReadRiddle - Profile";
  }, []);

  const { user, loading } = useAuth();
  const navigate = useNavigate();

  if (!user) {
    navigate("/login");
    return null;
  }

  const data = [
    { rank: "Master", score: "2001 -", icon: master },
    { rank: "Ruby", score: "1701 - 2000", icon: ruby },
    { rank: "Sapphire", score: "1501 - 1700", icon: sapphire },
    { rank: "Gold", score: "1401 - 1500", icon: gold },
    { rank: "Silver", score: "1301 - 1400", icon: silver },
    { rank: "Bronze", score: "1200 - 1300", icon: bronze },
  ];

  const renderRiddleRankIcon = (score) => {
    if (score < 1301) return bronze;
    if (score < 1401) return silver;
    if (score < 1501) return gold;
    if (score < 1701) return sapphire;
    if (score < 2001) return ruby;
    return master;
  };

  const toggleModal = () => {
    setIsModalOpen(!isModalOpen);
  };

  return (
    <>
      <div>
        <ProfileContainer style={{ display: "flex", gap: "20px" }}>
          <ProfileCard style={{ flex: 1 }}>
            <ProfileHeader>
              <Avatar>{user.username.charAt(0).toUpperCase()}</Avatar>
              <Name>{user.username}</Name>
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
                <Value>{new Date(user.created_at).toLocaleDateString("ko-KR")}</Value>
              </Field>
              <Field>
                <Label>
                  <span
                    style={{ cursor: "pointer", color: " #ea3a53", textDecoration: "underline" }}
                    onClick={toggleModal}
                  >
                    Riddle Score
                  </span>
                </Label>
                <Value>{user.riddle_score}</Value>
              </Field>
              <Field>
                <Label style={{ marginTop: "8%"}}>Riddle Rank:</Label>
                <Value>
                  <img
                    src={renderRiddleRankIcon(user.riddle_score)}
                    alt="Rank Icon"
                    style={{
                      width: "40px",
                      marginBottom: "5%",
                    }}
                  />
                </Value>
              </Field>
            </ProfileBody>
            <ButtonContainer>
              <ActionButton onClick={() => navigate("/update")}>
                Edit Profile
              </ActionButton>
              {!user.is_social && (
                <ActionButton onClick={() => navigate("/change_password")}>
                  Change Password
                </ActionButton>
              )}
            </ButtonContainer>
          </ProfileCard>
        </ProfileContainer>

        {isModalOpen && (
          <Modal>
            <ModalOverlay onClick={toggleModal} />
            <ModalContent>
              <h2 style={{ textAlign: "center",  fontSize: "3em"}}> ✨ Riddle Rank ✨</h2>
              <table style={{ width: "100%", borderCollapse: "collapse" }}>
                <thead>
                  <tr style={{borderBottom: "1px solid black",  fontSize: "1.3em"}}>
                    <th style={{ textAlign: "center", padding: "10px", }}>Rank</th>
                    <th style={{ textAlign: "center", padding: "10px", }}>Score Range</th>
                    <th style={{ textAlign: "center", padding: "10px" }}>Icon</th>
                  </tr>
                </thead>
                <tbody>
                  {data.map((item, index) => (
                    <tr key={index}>
                      <td style={{ padding: "10px", textAlign: "center", borderBottom: "1px solid black", borderRight: "1px solid black",fontSize: "1.0em", }}>{item.rank}</td>
                      <td style={{ padding: "10px", textAlign: "center", borderBottom: "1px solid black", borderRight: "1px solid black" }}>{item.score}</td>
                      <td style={{ padding: "10px", textAlign: "center", borderBottom: "1px solid black", }}>
                        <img
                          src={item.icon}
                          alt={`${item.rank} Icon`}
                          style={{ width: "40px", height: "50px", marginLeft: "10%" }}
                        />
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
              <ActionButton onClick={toggleModal} style={{ marginTop: "10px", marginLeft: "40%" }}>Close</ActionButton>
            </ModalContent>
          </Modal>
        )}
      </div>
    </>
  );
};

export default Profile;

import React from "react";
import styled from "styled-components";
import { useNavigate } from "react-router-dom";
import Cookies from "js-cookie";
import logo from '../assets/logo.png'
import readLogo from '../assets/read.png'
import riddleLogo from '../assets/riddle.png'

const Home = () => {
  const navigate = useNavigate();

  // const handleButtonClick = (url) => {
  //   const accessToken = Cookies.get("accessToken");
  //   if (!accessToken) {
  //     alert("로그인이 필요한 서비스입니다.");
  //     navigate("/login");
  //   } else {
  //     navigate(url);
  //   }
  // };

  const getCookie = (name) => {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) return parts.pop().split(';').shift();
};

  const handleButtonClick = (url) => {
    const accessToken = getCookie.get("access");
    if (!accessToken) {
      alert("로그인이 필요한 서비스입니다.");
      navigate("/login");
    } else {
      navigate(url);
    }
  };

  return (
    <HomeContainer>
      {/* <Header> */}
      <div>
      <img className="phoneImage" alt="title" src={logo} 
      style={{ width: '90%', minWidth: '900px', height: '90%', margin: '0 auto', marginLeft: '12%'}}
      />
      </div>
      <Content>
        <ButtonGroup>
          <ButtonHalf onClick={() => handleButtonClick("/read")}>
            <div style={{ marginBottom: '-20%'}}>
            <img className="phoneImage" alt="title" src={readLogo} 
            style={{ width: '70%', height: '80%', marginLeft: '-40%', margin: '0 auto', marginTop: '5%', objectFit: 'contain'}}
            />
            </div>
            <ButtonDescription style={{ color: "#D7567F"}}>
            <hr style={{ borderColor: "#D7567F", borderWidth: "2px", borderStyle: "solid"}} />
              - 주어진 카테고리에서 AI와의 대화로 교재를 학습합니다. <br></br>
              - Read Summary 로 교재에 대한 요약내용을 확인할 수 있습니다. <br></br>
              - 대화를 시작하면 화면 우측의 대화내역에 채팅내용이 저장됩니다. <br></br>
              - 대화내역 아래의 '+' 버튼을 눌러 새로운 대화를 시작할 수 있습니다. <br></br>
              - 공식문서와 관련된 학습을 할 수 있습니다.
            </ButtonDescription>
          </ButtonHalf>
          <ButtonHalf onClick={() => handleButtonClick("/riddle")}>
          <div style={{ marginBottom: '-20%'}}>
            <img className="phoneImage" alt="title" src={riddleLogo} 
           style={{ width: '70%', height: '80%', marginLeft: '-45%', margin: '0 auto', marginTop: '5%', objectFit: 'contain'}}
           />
            </div>
            <ButtonDescription>
            <hr style={{ borderColor: "#008C8C", borderWidth: "2px", borderStyle: "solid" }} />

              - 주어진 카테고리를 바탕으로 AI가 여러개의 Riddle을 생성합니다. <br></br>
              - Read Summary 로 교재에 대한 요약내용을 확인할 수 있습니다. <br></br>
              - Riddle을 시작하기 전에 난이도와 문항 개수, 형식 등을 설정할 수 있습니다. <br></br>
              - Riddle을 모두 풀면 Submit 버튼을 눌러 답안을 제출합니다. <br></br>
              - 제출된 답안을 AI가 검토하여 채점하고, 각 문항에 맞는 피드백을 제공합니다. <br></br>
            </ButtonDescription>
          </ButtonHalf>
        </ButtonGroup>
      </Content>
    </HomeContainer>
  );
};

export default Home;

// 스타일 정의
const HomeContainer = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
  width: 100%;
  background-color: #eeeeee;
  // background: linear-gradient(135deg, #f6d365, #fda085);
  color: #ffffff;
  font-family: "Arial", sans-serif;
  text-align: center;
  overflow: hidden;
`;

const Header = styled.header`
  margin-right: -5%;
  margin-top: 2%;

  @media (max-width: 1600px) {
  margin-right: -8%;

  @media (max-width: 1200px) {
  margin-right: 0%;
`;

const Title = styled.h1`
  font-size: 8em;
  font-weight: bold;
  margin: -5%;
  margin-bottom: 20px;
  text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
`;

const Subtitle = styled.h2`
  font-size: 1.5em;
  font-weight: 300;
  margin: 0;
  text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.2);
`;

const Content = styled.div`
  width: 100%;
  height: 65%;
  margin-top: 3%;
  padding: 20px;
  background: linear-gradient(135deg, #f6d365, #fda085);
  border-radius: 15px;
  font-weight: bold;
  box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
`;

const Description = styled.p`
  font-size: 1.2em;
  
  line-height: 1.6;
  margin-bottom: 30px;
`;

const ButtonGroup = styled.div`
  display: flex;
  justify-content: space-between;
  margin-top: 3%;
  margin-left: 7.8%;
  gap: 20px;
  width: 90%;
  padding-top: 20px;
  padding-bottom: 20px;

  @media (max-width: 1600px) {
  margin-left: 8.5%;
  margin-top: 0%;

  @media (max-width: 1200px) {
  margin-left: 4%;
`;

const ButtonHalf = styled.div`
  width: 47%; /* 각 버튼 영역을 절반으로 나눔 */
  height: 400px;
  background-color: #eeeeee;
  // background-color: rgba(255, 255, 255, 0.2);
  color: #000000;
  border-radius: 15px;
  padding: 20px;
  cursor: pointer;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: left;
  box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
  transition: all 0.3s ease;

  &:hover {
    transform: scale(1.05);
    background: linear-gradient(135deg,rgb(250, 220, 123),rgb(255, 169, 145));
    background-color: rgba(255, 255, 255, 0.4);
  }
  hr {
    width: 100%;  /* 수평선이 전체 너비를 차지하도록 설정 */
    border: 2px solid white; /* 검정색 수평선 */
    margin: 20px 0;  /* 상하 여백 추가 */
  }
`;

const ButtonText = styled.h3`
  font-size: 4em;
  display: flex;
  font-weight: bold;
  color: #ffffff;
  margin-top: 0px;
  margin-bottom: 0px;
  // text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
`;

const ButtonDescription = styled.p`
  font-size: 1.2em;
  // color: #ffffff;
  font-weight: 300;
<<<<<<< HEAD
  margin: 0;
=======
  margin: -30px;
  margin-bottom: 20%;
>>>>>>> 0757913 (style-chatIntro-2: 스타일 2차 수정)
  text-align: left;
  font-weight: bold;
  color: #008C8C;
  padding-left: 6%;
  padding-right: 20px;
  line-height: 1.5;
  // text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
`;
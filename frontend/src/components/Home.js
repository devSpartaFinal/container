import React, {useEffect, useState} from "react";
import styled from "styled-components";
import { useNavigate } from "react-router-dom";
import Cookies from "js-cookie";
import logo from '../assets/logo.png'
import book from '../assets/book.png'
import readLogo from '../assets/read.png'
import riddleLogo from '../assets/riddle.png'
import popquiz from '../assets/popquiz.png'
import gift from '../assets/gift.png'

const Home = () => {
  const navigate = useNavigate();
  const [style, setStyle] = useState({ transform: "scale(1)", opacity: 1 });
  const [rotation, setRotation] = useState(0);

  // const handleButtonClick = (url) => {
  //   const accessToken = Cookies.get("accessToken");
  //   if (!accessToken) {
  //     alert("로그인이 필요한 서비스입니다.");
  //     navigate("/login");
  //   } else {
  //     navigate(url);
  //   }
  // };

  useEffect(() => {
    document.title = "ReadRiddle - Home";
  }, []);
  
  const getCookie = (name) => {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) return parts.pop().split(';').shift();
};

  const handleButtonClick = (url) => {
    const accessToken = getCookie("access") || getCookie("accessToken");
    document.cookie = `accessToken=${accessToken}; path=/; max-age=86400; SameSite=Lax`;

    if (!accessToken) {
      alert("로그인이 필요한 서비스입니다.");
      navigate("/login");
    } else {
      navigate(url);
    }
  };
  
  useEffect(() => { const interval = setInterval(() => { setRotation((prev) => prev + 5);  }, 30); return () => clearInterval(interval);  }, []);
  
  return (
    <HomeContainer>
      {/* <Header> */}
      <img className="image" alt="title" src={logo}/>
      <Content>
        <ButtonGroup>
          <ButtonHalf onClick={() => handleButtonClick("/read")}>
            <div>
              <img className="image2" alt="read" src={readLogo} style={{marginLeft: '1%'}} />
            </div>
            <ButtonDescription style={{ color: "#D7567F"}}>
            <hr style={{ borderColor: "#D7567F", borderWidth: "2px", borderStyle: "solid"}} />
              - 주어진 카테고리에서 AI와의 대화로 교재를 학습합니다. <br></br>
              - Read Summary 로 교재에 대한 요약내용을 확인할 수 있습니다. <br></br>
              - 대화를 시작하면 화면 우측의 대화내역에 채팅내용이 저장됩니다. <br></br>
              - 대화내역 아래의 '+' 버튼을 눌러 새로운 대화를 시작할 수 있습니다. <br></br>
              - 스파르타 교재와 공식문서에 관련된 학습을 할 수 있습니다.
            </ButtonDescription>
          </ButtonHalf>
          <ButtonHalf onClick={() => handleButtonClick("/multi_chat")}>
            <div>
              <img className="image4" alt="popquiz" src={popquiz} style={{marginLeft: '30%'}} />
            </div>
            <ButtonDescription style={{ color: "#666666"}}>
            <hr style={{ borderColor: "#666666", borderWidth: "2px", borderStyle: "solid"}} />
              - 다른 유저들과 함께 POP QUIZ 챌린지에 도전해보세요! <br></br>
              - 정해진 시간마다 단답형 POP QUIZ가 생성됩니다. <br></br>
              - 제한시간 내에 정답을 맞추면 Riddle점수를 획득합니다.<br></br>
              - 제한시간이 초과될 경우, 정답이 공개됩니다.<br></br>
              - 채팅창과 프로필 페이지에서 내 Riddle 랭킹과 등급을 확인할 수 있습니다.
            </ButtonDescription>
          </ButtonHalf>
          <ButtonHalf onClick={() => handleButtonClick("/riddle")}>
            <div>
              <img className="image3" alt="riddle" src={riddleLogo} style={{marginLeft: '5%'}} />
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
  overflow-x: hidden;
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
  height: 60%;
  padding-top: 2%;
  margin-top: -3%;
  background: linear-gradient(135deg, #f6d365, #fda085);
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
  margin-left: 7.8%;
  width: 90%;
  height: 93%;

  @media (max-width: 1200px) {
  margin-left: 4%;
`;

const ButtonHalf = styled.div`
  width: 32%; /* 각 버튼 영역을 절반으로 나눔 */
  height: 100%;
  background-color: #eeeeee;
  border-radius: 15px;
  cursor: pointer;
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: left;
  box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
  transition: all 0.3s ease;
  overflow-x: hidden;
  overflow-y: auto;

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
  text-align: left;
  font-weight: bold;
  color: #008C8C;
  padding-left: 5%;
  padding-right: 5%;
  line-height: 1.8;
  overflow-x: hidden;
  overflow-y: auto;
`;
import React, { useState, useEffect, useCallback } from "react";
import styled from "styled-components";
import { useNavigate, useLocation } from "react-router-dom";
import { 
  DropdownButton,
  DropdownItem,
  ArrowIcon,
  GenerateButtonContainer,
  GenerateQuizButton,
  ChatScreenContainer,
  ChatHeaderContainer,
  ChatHeaderDescription,
  ChatHeaderDivider,
  ChatHeaderTitle,
  CenterContainer,
  DropdownRowContainer,
  DropdownLeftRowMenu,
  DropdownRightRowMenu,
  ToggleButton,
  PlusButton,
  PlusButton2,
  Chat,
 } from "../styled/ChattingScreenStyles";
import ChatForm from "./ChatForm";
import Conversation from "./Conversation";
import { chatApiRequest } from "../apiRequest";
import {
  AiOutlineDown,
  AiOutlineReload,
} from "react-icons/ai";
import {
  faSquarePlus,
} from "@fortawesome/free-solid-svg-icons";

import ReactMarkdown from "react-markdown";
import Session from "./Session";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { useAuth } from "../context/AuthContext";

const ChatScreen = () => {
  useEffect(() => {
      document.title = "ReadRiddle - Read";
    }, []);

  const categoryOptions = [
    "PYTHON",
    "ML",
    "DL",
    "LLM",
    "OPENSOURCE",
    "DJANGO",
    "DRF",
    "DOCKER",
    "OFFICIAL_DOCS",
  ];

  const navigate = useNavigate();

  const titleOptions = {
    PYTHON: [
      { id: 1, text: "Pandas 소개" },
      { id: 2, text: "Pandas 설치 및 Jupyter Notebook 설정하기" },
      { id: 3, text: "판다스의 기본! 시리즈와 데이터 프레임 개념잡기" },
      { id: 4, text: "NumPy 소개 및 설치" },
      { id: 5, text: "NumPy 배열(array) 생성 및 기초 연산" },
      { id: 6, text: "배열 연산 및 브로드캐스팅" },
      { id: 7, text: "판다스 사용을 위해 데이터를 불러오기와 저장하기" },
      { id: 8, text: "불러온 데이터 미리보기 및 기본 정보 확인" },
      { id: 9, text: "데이터를 선택하는 기본 방법" },
      { id: 10, text: "조건부 필터링과 데이터 타입 변환" },
      { id: 11, text: "데이터 변형해보기: 데이터 정렬과 병합" },
      { id: 12, text: "데이터 변형해보기: 그룹화 및 집계, 피벗테이블" },
      { id: 13, text: "데이터 전처리: 결측치 탐지와 다양한 처리 방법" },
      { id: 14, text: "데이터 전처리: 이상치 탐지 및 처리" },
      {
        id: 15,
        text: "데이터 전처리: 데이터 정규화와 표준화 (비선형 변환 포함)",
      },
      { id: 16, text: "데이터 전처리: 인코딩 (Encoding)" },
      { id: 17, text: "판다스 심화: 멀티 인덱스와 복합 인덱스" },
      {
        id: 18,
        text: "판다스 심화: 데이터프레임 구조화 다시하기와 크기 조정하기",
      },
    ],
    ML: [
      { id: 1, text: "1강. 강의 소개" },
      { id: 2, text: "2강. 머신러닝 개요와 구성요소" },
      { id: 3, text: "3강. Anaconda 설치 및 라이브러리 소개" },
      { id: 4, text: "4강. Jupyter Notebook 사용해보기" },
      { id: 5, text: "5강. 데이터셋 불러오기" },
      { id: 6, text: "6강. 데이터 전처리" },
      { id: 7, text: "7강. 데이터 전처리 실습" },
      { id: 8, text: "8강. 지도학습 : 회귀모델" },
      { id: 9, text: "9강. 지도학습 : 분류모델 - 로지스틱 회귀" },
      { id: 10, text: "10강. 지도학습 : 분류모델 - SVM" },
      { id: 11, text: "11강. 지도학습 : 분류모델 - KNN" },
      { id: 12, text: "12강. 지도학습 : 분류모델 - 나이브베이즈" },
      { id: 13, text: "13강. 지도학습 : 분류모델 - 의사결정나무" },
      { id: 14, text: "14강. 비지도학습 : 군집화모델 - k-means clustering" },
      { id: 15, text: "15강. 비지도학습 : 군집화모델 - 계층적 군집화" },
      { id: 16, text: "16강. 비지도학습 : 군집화모델 - DBSCAN" },
      { id: 17, text: "17강. 비지도학습 : 차원축소 - PCA" },
      { id: 18, text: "18강. 비지도학습 : 차원축소 - t-SNE" },
      { id: 19, text: "19강. 비지도학습 : 차원축소 - LDA" },
      { id: 20, text: "20강. 앙상블 학습 - 배깅과 부스팅" },
      { id: 21, text: "21강. 앙상블 학습 - 랜덤 포레스트" },
      { id: 22, text: "22강. 앙상블 학습 - 그래디언트 부스팅 머신 (GBM)" },
      { id: 23, text: "23강. 앙상블 학습 - XGBoost" },
    ],
    DL: [
      { id: 1, text: "1. 딥러닝 개념을 잡아봅시다!" },
      { id: 2, text: "2. 신경망의 기본 원리" },
      { id: 3, text: "3. 딥러닝 실습 환경 구축" },
      { id: 4, text: "4. 인공 신경망(ANN)" },
      { id: 5, text: "5. 합성곱 신경망(CNN)" },
      { id: 6, text: "6. 순환 신경망(RNN)" },
      { id: 7, text: "7. 어텐션 (Attention) 메커니즘" },
      { id: 8, text: "8. 자연어 처리(NLP) 모델" },
      { id: 9, text: "9. ResNet" },
      { id: 10, text: "10. 이미지 처리 모델" },
      { id: 11, text: "11. 오토인코더" },
      { id: 12, text: "12. 생성형 모델" },
      { id: 13, text: "13. 전이학습" },
      { id: 14, text: "14. 과적합 방지 기법" },
      { id: 15, text: "15. 하이퍼파라미터 튜닝" },
      { id: 16, text: "16. 모델 평가와 검증 및 Pytorch 문법 정리" },
    ],
    LLM: [
      { id: 1, text: "LLM이란? 강의소개!" },
      { id: 2, text: "LLM 시스템 형성을 위한 다양한 기법 및 요소 개념 익히기" },
      { id: 3, text: "OpenAI Playground 사용법 가이드" },
      { id: 4, text: "프롬프트 엔지니어링 개념잡기!" },
      { id: 5, text: "프롬프트 엔지니어링 맛보기" },
      { id: 6, text: "프롬프트 엔지니어링의 기본 원칙" },
      { id: 7, text: "Shot 계열의 프롬프팅 기법 배워보기" },
      { id: 8, text: "Act As 류의 프롬프팅 기법 배우기" },
      { id: 9, text: "논리적인 추론 강화하기" },
      { id: 10, text: "대화를 활용한 프롬프팅 기법" },
      { id: 11, text: "형식 지정 기법" },
      { id: 12, text: "LLM의 사용 준비하기" },
      {
        id: 13,
        text: "Vector DB 개념 및 RAG (Retrieval-Augmented Generation) 개념",
      },
      { id: 14, text: "텍스트 처리의 핵심 기법과 임베딩 활용하기" },
      { id: 15, text: "LangChain: 개념과 활용" },
      { id: 16, text: "Python LangChain과 FAISS" },
      {
        id: 17,
        text: "Sentence-Transformer, Word2Vec, 그리고 Transformer 기반 임베딩",
      },
      { id: 18, text: "문서 임베딩 실습하기" },
    ],
    OPENSOURCE: [
      { id: 1, text: "서울시 공공 자전거 분석" },
      { id: 2, text: "무더위 쉼터 데이터" },
      { id: 3, text: "ETF 예측 모델 (다중선형회귀, XGBoost, ARIMA)" },
      { id: 4, text: "ResNet을 이용한 개 고양이 분류기" },
      { id: 5, text: "GAN을 이용한 MNIST 숫자 생성 모델" },
      {
        id: 6,
        text: "다양한 유형의 소스(PDF, YouTube 동영상) 로부터 데이터를 가공해 RAG 파이프 라인을 구현하는 예제의 컬럼",
      },
    ],
    DJANGO: [
      { id: 1, text: "DJANGO 알아보기" },
      { id: 2, text: "DJANGO 개발 환경 구성하기" },
      { id: 3, text: "DJANGO 프로젝트(Project) 알아보기" },
      { id: 4, text: "DJANGO 앱(App) 알아보기" },
      { id: 5, text: "클라이언트와 서버" },
      { id: 6, text: "요청과 응답" },
      { id: 7, text: "DJANGO의 설계 철학 - MTV Pattern" },
      { id: 8, text: "DJANGO Template 시작하기" },
      { id: 9, text: "DJANGO Template System" },
      { id: 10, text: "HTTP Form" },
      { id: 11, text: "다중 앱과 URL" },
      { id: 12, text: "DJANGO Model" },
      { id: 13, text: "DJANGO ORM" },
      { id: 14, text: "DJANGO MTV 사용하기 (CR)" },
      { id: 15, text: "DJANGO MTV 사용하기 (RUD)" },
      { id: 16, text: "DJANGO Form" },
      { id: 17, text: "URL Namespace" },
      { id: 18, text: "DJANGO Auth" },
      { id: 19, text: "회원기능 구현하기" },
      { id: 20, text: "DJANGO Static & Media" },
      { id: 21, text: "DJANGO Admin" },
      { id: 22, text: "Model Relationship (1:N)" },
      { id: 23, text: "Custom UserModel 활용하기" },
      { id: 24, text: "Model Relationship (M:N)" },
      { id: 25, text: "DJANGO 기초 마무리" },
    ],
    DRF: [
      { id: 1, text: "DJANGO DRF INTRO" },
      { id: 2, text: "HTTP와 URL 구조" },
      { id: 3, text: "RESTful API와 JSON" },
      { id: 4, text: "Response와 Serializer" },
      { id: 5, text: "DJANGO REST Framework 시작하기" },
      { id: 6, text: "DRF Single Model CRUD" },
      { id: 7, text: "DRF Class Based View 사용하기" },
      { id: 8, text: "Relationship과 DRF" },
      { id: 9, text: "Serializer 활용하기" },
      { id: 10, text: "Token Auth with JWT" },
      { id: 11, text: "DJANGO ORM 한 걸음 더" },
      { id: 12, text: "DJANGO ORM 최적화" },
      { id: 13, text: "더 빠른 속도를 위해" },
      { id: 14, text: "API 문서화" },
      { id: 15, text: "외부 API 연동하기 (feat. ChatGPT)" },
      { id: 16, text: "DJANGO Deploy with AWS" },
    ],
    DOCKER: [
      {
        id: 1,
        text: "Docker와 GitHub Actions를 활용한 CI/CD 및 자동 배포 실습",
      },
      {
        id: 2,
        text: "Docker를 활용한 DJANGO 프로젝트 환경 설정 및 통합 가이드",
      },
      { id: 3, text: "Docker Compose를 활용한 Django와 Postgres 연동 실습" },
      {
        id: 4,
        text: "Docker와 GitHub Actions를 활용한 CI/CD 및 클라우드 자동 배포 실습",
      },
    ],
    OFFICIAL_DOCS: [
      { id: 1, text: "Django" },
      { id: 2, text: "Django_DRF" },
      { id: 3, text: "React" },
    ],
  };

  const location = useLocation();
  const { user } = useAuth(); 
  const username = user.username;
  const [session_no, setSessionNo] = useState(null);
  const [selectedCategory, setSelectedCategory] = useState(
    location.state?.category || null
  );
  const [selectedTitle, setSelectedTitle] = useState(
    location.state?.title || null
  );
  const [selectedTitleIndex, setSelectedTitleIndex] = useState(
    location.state?.titleIndex || null
  );
  const [selectedKeyword, setSelectedKeyword] = useState("");
  const [messages, setMessages] = useState([
    {
      id: 1,
      text: username + "님 반갑습니다! 대화를 원하시는 카테고리와 주제를 선택해주세요.",
      author: "BOT",
      
    },
  ]);
  const [haveToReset, setHaveToReset] = useState(false);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (!selectedCategory || !selectedTitle) {
      setLoading(false);
    }
  }, [selectedCategory, selectedTitle]);

  const handleSessionClick = async (
    newMessages,
    session_no,
    category,
    title_no
  ) => {
    try {
      setHaveToReset(false);
      setSessionNo(session_no);
      setMessages(newMessages);
      setSelectedCategory(category);
      setSelectedTitleIndex(title_no);

      const selectedTitleData = titleOptions[category][title_no - 1].text;
      setSelectedTitle(selectedTitleData);
    } catch (error) {
      console.error("Error fetching messages for session:", error);
    }
  };

  const fetchSessionNo = () => {
    setMessages([]);
    setSessionNo(null);
    setSelectedCategory(null);
    setSelectedTitle(null);
    setSelectedSummary("");
    setHaveToReset(true);
  };

  const [isDropdownOpen1, setIsDropdownOpen1] = useState(false);
  const [isDropdownOpen2, setIsDropdownOpen2] = useState(false);

  const [selectedSummary, setSelectedSummary] = useState(
    location.state?.summary
  );
  const [summaryLoading, setSummaryLoading] = useState(false);

  const [isSummaryVisible, setIsSummaryVisible] = useState(false);

  useEffect(() => {
    setSelectedCategory(selectedCategory);
  }, [selectedCategory]);

  useEffect(() => {
    setSelectedTitleIndex(selectedTitleIndex);
  }, [selectedTitleIndex]);

  const toggle1Dropdown = () => {
    setIsDropdownOpen1((prev) => !prev);
    setIsDropdownOpen2(false);
  };

  const toggle2Dropdown = () => {
    setIsDropdownOpen2((prev) => !prev);
    setIsDropdownOpen1(false);
  };

  const selectCategory = (category) => {
    setSelectedCategory(category);
    setSelectedTitle(null);
    setMessages([{ id: 1, text: "선택하신 카테고리 [" + category + "]의 주제를 선택해주세요.", author: "BOT" }]);
    setIsDropdownOpen1(false);
    setSelectedSummary("");
    setSessionNo(null);
    setSelectedKeyword("");
  };

  const selectTitle = (titleText, titleId) => {
    setSelectedTitle(titleText);
    setSelectedTitleIndex(titleId);
    setMessages([{ id: 1, text: "주제 선정이 완료되었습니다. 궁금한 내용을 물어보세요!", author: "BOT" }]);
    setIsDropdownOpen2(false);
    setSelectedSummary("");
    setHaveToReset(true);
    setSessionNo(null);
  };

  const toggleSummary = () => {
    setIsSummaryVisible((prev) => !prev);
  };

  const onSendMessage = (messageText) => {
    if (!selectedCategory || !selectedTitleIndex) {
      
      const newMessage = {
        id: messages.length + 1,
        text: messageText,
        author: "User",
      };

      const botMessage = {
        id: messages.length + 1,
        text: `${username}님 반갑습니다! 대화를 원하시는 카테고리와 주제를 선택해주세요.`,
        author: "BOT",
      };
  
      setMessages((prevMessages) => [...prevMessages, newMessage, botMessage]);
      return;
    }
  
    const newMessage = {
      id: messages.length + 1,
      text: messageText,
      author: "User",
    };
  
    setMessages((prevMessages) => [...prevMessages, newMessage]);
  };

  const handleSummary = useCallback(async () => {
    if (!selectedCategory || !selectedTitleIndex) {
      alert("카테고리와 주제를 선택해주세요!");
      return;
    }
    setSummaryLoading(true);

    try {
      const response = await chatApiRequest.get(`/summary/?category=${selectedCategory}&title_no=${selectedTitleIndex}&user_input=${selectedTitle}&keyword=${selectedKeyword}`);
      setSelectedSummary(response.data.result);
    } catch (error) {
      console.error("Error generating quiz:", error);
    } finally {
      setSummaryLoading(false);
    }
  }, [selectedCategory, selectedTitleIndex, selectedTitle]);

  const onBotMessage = (messageText, isMarkdown = false) => {
    try {
      const botMessage = {
        id: messages.length + 1,
        text: messageText || "응답 없음",
        author: "BOT",
        isMarkdown: isMarkdown,
      };

      setHaveToReset(false);
      setMessages((prevMessages) => [...prevMessages, botMessage]);
    } catch (error) {
      console.error("메시지 추가 실패:", error);

      const errorMessage = {
        id: messages.length + 1,
        text: "죄송합니다. 메시지를 추가하는 중 오류가 발생했습니다.",
        author: "BOT",
        isMarkdown: false,
      };

      setHaveToReset(false);
      setMessages((prevMessages) => [...prevMessages, errorMessage]);
    }
  };

  return (
    <>
      <HomeContainer>
        <Session
          onSessionClick={handleSessionClick}
          resetSelectedSession={setHaveToReset}
          session_no={session_no}
          setSessionNo={session_no}
          setMessages={setMessages}
          disabled={loading}
        />
        <DropdownRowContainer>
          <DropdownButton onClick={toggle1Dropdown} style={{ position: "relative", height: "50px" }} disabled={loading}>
            {selectedCategory || "Category"}
            <ArrowIcon
              isOpen={isDropdownOpen1}
              style={{
                position: "absolute",
                top: "30%",
                right: "5%",
              }}
            >
              <AiOutlineDown />
            </ArrowIcon>
          </DropdownButton>
          <DropdownLeftRowMenu isOpen={isDropdownOpen1} disabled={messages.length > 1}>
            {categoryOptions.map((category) => (
              <DropdownItem key={category} onClick={() => selectCategory(category)}>
                {category}
              </DropdownItem>
            ))}
          </DropdownLeftRowMenu>
  
          <DropdownButton 
          disabled={loading}
          onClick={() => {
            if (!selectedCategory) {
              alert("카데고리를 먼저 선택해주세요");
              return;
            }
            toggle2Dropdown();
          }}
          style={{ position: "relative", height: "50px" }}>
            {selectedTitle || "Title"}
            <ArrowIcon
              isOpen={isDropdownOpen2}
              style={{
                position: "absolute",
                top: "30%",
                right: "5%",
              }}
            >
              <AiOutlineDown />
            </ArrowIcon>
          </DropdownButton>
          <DropdownRightRowMenu isOpen={isDropdownOpen2}>
            {selectedCategory &&
              titleOptions[selectedCategory]?.map(({ id, text }) => (
                <DropdownItem key={id} onClick={() => selectTitle(text, id)}>
                  {text}
                </DropdownItem>
              ))}
          </DropdownRightRowMenu>
          
          {selectedCategory === "OFFICIAL_DOCS" && selectedTitle &&
          (
          <input
                      type="text"
                      placeholder="요약을 위한 키워드를 작성해주세요"
                      value={selectedKeyword} 
                      onChange={(e) => setSelectedKeyword(e.target.value)} 
                      style={{
                        fontSize: '0.9em',
                        marginLeft: '5px',
                        width: '230px',
                        height: '50px',
                        borderRadius: '10px',
                        color: "black",
                        backgroundColor: "rgba(255, 255, 255, 0.5)",
                        border: '3px solid #ffffff',
                        padding: '0 10px',
                        boxSizing: 'border-box',
                      }}
                    />
          )}
  
          <GenerateButtonContainer>
            <GenerateQuizButton onClick={handleSummary} disabled={loading}>
              <AiOutlineReload
                size={24}
                style={{
                  cursor: "pointer",
                  marginRight: "10px",
                  color: "#ffffff",
                }}
              />
              Read Summary
            </GenerateQuizButton>
          </GenerateButtonContainer>
        </DropdownRowContainer>
  
        {/* 채팅 UI */}
        <ChatScreenContainer>
          <ChatHeaderContainer>
            <ChatHeaderTitle>
              {selectedCategory} - {selectedTitle}
            </ChatHeaderTitle>
            <ToggleButton onClick={toggleSummary} disabled={!selectedCategory || !selectedTitle}>
              {summaryLoading ? "Loading Summary...." : isSummaryVisible ? "Hide Summary" : "Show Summary"}
            </ToggleButton>
            {isSummaryVisible && (
              <ChatHeaderDescription>
                <ReactMarkdown>{selectedSummary}</ReactMarkdown>
              </ChatHeaderDescription>
            )}
            <ChatHeaderDivider />
          </ChatHeaderContainer>
  
          <CenterContainer>
          {loading && (
                <div
                  style={{
                    position: "absolute",
                    top: "50%",
                    left: "50%",
                    transform: "translate(-50%, -50%)",
                    zIndex: 10,
                    display: "flex",
                    flexDirection: "column",
                    justifyContent: "center",
                    alignItems: "center",
                    backgroundColor: "rgba(0, 0, 0, 0.2)",
                    padding: "20px",
                    borderRadius: "8px",
                  }}
                >
                  <div
                    style={{
                      width: "50px",
                      height: "50px",
                      border: "5px solid #f3f3f3",
                      borderTop: "5px solid #3498db",
                      borderRadius: "50%",
                      animation: "spin 1s linear infinite",
                    }}
                  ></div>
                  <p style={{ marginTop: "10px", color: "#fff", fontWeight: "bold" }}>
                    Generating Response...
                  </p>
                </div>
              )}
            <Chat>
              <Conversation messages={messages} />
  
              <ChatForm
                onSendMessage={onSendMessage}
                onBotMessage={onBotMessage}
                category={selectedCategory}
                title_no={selectedTitleIndex}
                session_no={session_no}
                setSessionNo={setSessionNo}
                loading={loading}
                setLoading={setLoading}
              />
            </Chat>
          </CenterContainer>
  
          {/* <PlusButton
            icon={faSquarePlus}
            size="2x"
            disabled={loading || !selectedCategory || !selectedTitle}
            onClick={() => {
              setLoading(true);
              fetchSessionNo();
              setHaveToReset(true);
              setMessages([]);
              setSessionNo(null);
            }}
            style={{cursor: (loading || !selectedCategory || !selectedTitle) ? 'not-allowed' : 'pointer'}}
          /> */}
        </ChatScreenContainer>
      </HomeContainer>
  
      {/* 로딩 애니메이션을 위한 CSS 추가 */}
      <style>
        {`
          @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
          }
        `}
      </style>

      <PlusButton2
        data-tooltip="새 대화를 시작할 수 있습니다."
        disabled={loading || !selectedCategory || !selectedTitle}
        onClick={() => {
          setLoading(true);
          fetchSessionNo();
          setHaveToReset(true);
          setMessages([]);
          setSessionNo(null);
        }}
        style={{
          cursor: (loading || !selectedCategory || !selectedTitle) ? 'not-allowed' : 'pointer',
          opacity: (loading || !selectedCategory || !selectedTitle) ? 0.5 : 1,
        }}
      >
        <FontAwesomeIcon icon={faSquarePlus} size="3x" />
      </PlusButton2>
    </>
  );
  
};

export default ChatScreen;

// 스타일 정의
const HomeContainer = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
  width: 100%;
  background: linear-gradient(135deg, #f6d365, #fda085);
  // color: #ffffff;
  font-family: "Arial", sans-serif;
  text-align: center;
`;
import React, { useState, useRef } from "react";
import {
  HomeContainer,
  DropDownParentContainer,
  TitleContainer,
  DivContainer,
  Div2Container,
  DropdownContainer,
  DropdownButton,
  DropdownMenu,
  DropdownItem,
  InformationContainer,
  InformationButton,
  ParentContainer,
  ButtonRow,
  ButtonContainer,
  Button,
  ModalContainer,
  MyModal,
  ModalContent,
  SummaryText,
  CloseButton,
  ArrowIcon,
} from "../styled/SetRiddleStyles";
import styled from "styled-components";
import Session from "./Session";
import { AiOutlineArrowRight } from "react-icons/ai";
import { AiOutlineArrowLeft } from "react-icons/ai";
import { AiOutlineDown } from "react-icons/ai";
import { ClipLoader } from "react-spinners";
import { useNavigate } from "react-router-dom";
import { chatApiRequest } from "../apiRequest";
import { quizApiRequest } from "../apiRequest";
import ReactMarkdown from "react-markdown";
import { AiOutlineClose } from "react-icons/ai";
import { Background } from "../styled/ChatHomeStyles";
import readLogo from '../assets/read.png'
import riddleLogo from '../assets/riddle.png'
import book from '../assets/book.png'

const SetRiddle = () => {
  const [isDropdownOpen1, setIsDropdownOpen1] = useState(false);
  const [isDropdownOpen2, setIsDropdownOpen2] = useState(false);
  const [selectedCategory, setSelectedCategory] = useState(null);
  const [selectedTitle, setSelectedTitle] = useState(null);
  const [selectedTitleIndex, setSelectedTitleIndex] = useState(null);
  const [selectedKeyword, setSelectedKeyword] = useState("");
  const [selectedSummary, setSelectedSummary] = useState(null);
  const [selectedQuestions, setSelectedQuestions] = useState([]);
  const [quizCount, setQuizCount] = useState(10);
  const [quizDifficulty, setQuizDifficulty] = useState("easy");
  const [quizType, setQuizType] = useState("4_multiple_choice");
  const [isLoading, setIsLoading] = useState(false);
  const [summaryLoading, setSummaryLoading] = useState(false);
  const navigate = useNavigate();
  const [showModal, setShowModal] = useState(false);

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

  /* text 더 추가해야 함 */
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
    DOCS: [
      { id: 1, text: "Django 공식문서" },
      { id: 2, text: "React 공식문서" },
    ],
    OFFICIAL_DOCS: [
      { id: 1, text: "Django" },
      { id: 2, text: "Django_DRF" },
      { id: 3, text: "React" },
    ],
  };

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
    setIsDropdownOpen1(false);
  };

  const selectTitle = (titleText, titleId) => {
    setSelectedTitle(titleText);
    setSelectedTitleIndex(titleId);
    setIsDropdownOpen2(false);
  };

  const handleGenerateQuiz = async (e) => {
    e.preventDefault();
    if (!selectedCategory || !selectedTitleIndex) {
      alert("퀴즈 시작 전에 세부 카테고리와 주제를 선택해주세요!");
      return;
    }
    setIsLoading(true);

    let formData = {};
    if (selectedCategory === "OFFICIAL_DOCS")
    {
      formData = {
        category: selectedCategory,
        title_no: selectedTitleIndex,
        keyword: selectedKeyword,
        type: quizType,
        count: quizCount,
        difficulty: quizDifficulty,
        level: "beginner",
      };
    }

    else {

      formData = {
        category: selectedCategory,
        title_no: selectedTitleIndex,
        type: quizType,
        count: quizCount,
        difficulty: quizDifficulty,
        level: "beginner",
      };
    }

    try {
      const response = await quizApiRequest.post("/request/", formData);

      const session_no = response.data.id;
      const get_question_response = await quizApiRequest.get(`/${session_no}/`);
      setSelectedQuestions((prev) => [
        ...prev,
        ...get_question_response.data.questions,
      ]);

      navigate("/riddle/test", {
        state: {
          session_no: session_no,
          selectedCategory: selectedCategory,
          selectedTitle: selectedTitle,
          selectedTitleIndex: selectedTitleIndex,
          selectedKeyword: selectedKeyword,
          quizType: quizType,
          quizCount: quizCount,
          quizDifficulty: quizDifficulty,
          selectedQuestions: get_question_response.data.questions,
        },
      });
    } catch (error) {
      console.error("Error generating quiz:", error);
    } finally {
      setIsLoading(false);
    }
  };

  const handleSummary = async (e) => {
    e.preventDefault();

    if (!selectedCategory || !selectedTitleIndex) {
      alert("카테고리와 주제를 선택해주세요!");
      return;
    }
    setSummaryLoading(true);
    setShowModal(false);

    try {

      const response = await chatApiRequest.get(
        `/summary/?category=${selectedCategory}&title_no=${selectedTitleIndex}&keyword=${selectedKeyword}`
      );


      setSelectedSummary(response.data.result);
      setShowModal(true);
    } catch (error) {
      console.error("Error generating quiz:", error);
    } finally {
      setSummaryLoading(false);
    }
  };

  const closeModal = () => {
    setShowModal(false);
  };

  return (
    <>
      {isLoading ? (
        <div style={{ textAlign: "center", padding: "2em" }}>
          <ClipLoader color="#3498db" size={70} />
          <h2 style={{ color: "#3498db" }}>
            🧐 제시해주신 조건에 맞는 문제를 생성중입니다!
          </h2>
          <h2 style={{ color: "#3498db" }}>.... 조금만 기다려주세요 ....</h2>
        </div>
      ) : (
        <>
          <HomeContainer>
          <DropDownParentContainer>
          <TitleContainer>
              <div
                style={{
                  display: 'flex', 
                  flexDirection: 'row',
                  alignItems: 'center', 
                  textAlign: 'center',
                  marginLeft: '25%',
                  transform: 'scale(0.8)', 
                  transformOrigin: 'left',
                }}
              >
                <img
                  className="phoneImage"
                  alt="title"
                  src={book}
                  style={{
                    width: '20%',
                    height: 'auto'
                  }}
                />
                <p
                  style={{
                    fontSize: '1em', 
                    margin: 0, 
                  }}
                >
                  Let's Start Riddle
                </p>

                <img
                  className="phoneImage"
                  alt="title"
                  src={book}
                  style={{
                    width: '20%',
                    height: 'auto'
                  }}
                />
              </div>
            </TitleContainer>

            <DivContainer>
              <DropdownContainer>
              <DropdownButton onClick={toggle1Dropdown} style={{ position: 'relative',
              height: '70px', 
              marginLeft: '-35%',
              paddingRight: '30px',
              borderTopLeftRadius: '30px',
              borderBottomLeftRadius: '30px',
              width: '130px',
              alignItems: 'center', 
              justifyContent: 'center', 
              textAlign: 'center', 
              whiteSpace: 'normal',
              wordBreak: 'break-word', 
               }}>
                  {selectedCategory || "Category"}
                  <ArrowIcon isOpen={isDropdownOpen1}
                  
                  style={{
                    position: 'absolute',
                    top: '30%',
                    right: '5%',
                  }}
                  >
                    <AiOutlineDown/>
                  </ArrowIcon>
                </DropdownButton>
              <DropdownMenu isOpen={isDropdownOpen1}
              style={{ 
                top: 'calc(100% + -100px)',     
                left: 'calc(-20% + -200px)',     
                width: "150px",   
              }}
              
              >
                  {categoryOptions.map((category) => (
                    <DropdownItem
                    key={category}
                    onClick={() => selectCategory(category)}
                    >
                      {category}
                  </DropdownItem>
                  ))}
                </DropdownMenu>
              </DropdownContainer>

              <DropdownContainer >
              <DropdownButton
                  onClick={() => {
                    if (!selectedCategory) {
                      alert("카데고리를 먼저 선택해주세요");
                      return;
                    }
                    toggle2Dropdown();
                  }}
                style={{
                  position: 'relative',
                  height: '70px', 
                  display: 'flex', 
                  alignItems: 'center', 
                  justifyContent: 'center',
                  borderTopRightRadius: '30px',
                  borderBottomRightRadius: '30px',
                  marginLeft: '-10%',
                  paddingRight: '50px',
                  textAlign: 'center', 
                  padding: '0 10px',
                  boxSizing: 'border-box', 
                }}
              >
                  {selectedTitle || "Title"}
                  <ArrowIcon isOpen={isDropdownOpen2}
                  
                  style={{
                    position: 'absolute',
                    top: '30%',
                    right: '5%',
                    marginRight: '-0%',
                  }}
                  >
                    <AiOutlineDown/>
                  </ArrowIcon>
                </DropdownButton>
                <DropdownMenu isOpen={isDropdownOpen2}
                style={{ 
                  
                  width: '200px',
                  top: 'calc(100% + -100px)',  
                  left: '100%',              
                }}
                
                >
                  {selectedCategory &&
                    titleOptions[selectedCategory]?.map(({ id, text }) => (
                      <DropdownItem
                      key={id}
                      onClick={() => selectTitle(text, id)}
                      >
                        {text}
                      </DropdownItem>
                    ))}
                </DropdownMenu>
              </DropdownContainer>
            </DivContainer>

            <DivContainer style={{ marginLeft: '30%'}}>
            {selectedCategory === "OFFICIAL_DOCS" && selectedTitle && (
                  <div
                    style={{
                      display: 'flex',
                      marginTop: '-15%',
                      paddingTop: '2%',
                      padding: '3%',
                      bottom: '-30px',
                      borderRadius: '10px',
                      textAlign: 'center',
                      backgroundColor: 'rgba(246, 39, 24, 0.5)'
                    }}
                  >
                    <h3 style={{ marginTop: '10px'}}> Keyword </h3>
                    <input
                      type="text"
                      placeholder="Keyword of the document"
                      value={selectedKeyword} 
                      onChange={(e) => setSelectedKeyword(e.target.value)} 
                      style={{
                        fontSize: '1.1em',
                        marginLeft: '40px',
                        width: '240px',
                        height: '40px',
                        borderRadius: '5px',
                        color: "black",
                        backgroundColor: "rgba(255, 255, 255, 0.5)",
                        border: '3px solid #ffffff',
                        padding: '0 10px',
                        boxSizing: 'border-box',
                      }}
                    />
                  </div>
                )}
            </DivContainer>
            
            <Div2Container>
              <InformationContainer>
              <InformationButton>
              <label
                    htmlFor="quizCount"
                    style={{ flexGrow: 1, textAlign: "left", paddingLeft: "5px", color: "white", fontSize: 25}}
                    >
                    Count
                  </label>
                  <input
                    id="quizCount"
                    type="number"
                    min="1"
                    max="20"
                    value={quizCount}
                    onChange={(e) => {
                      const value = Number(e.target.value);
                      if (value > 20) {
                        alert("Quiz Count cannot exceed 20!");
                        return;
                      }
                      setQuizCount(value);
                    }}
                    style={{
                      flexGrow: 1,
                      padding: "4px",
                      border: "1px solid #ddd",
                      borderRadius: "5px",
                      textAlign: "center",
                      fontSize: 20,
                      width: "100px"
                    }}
                    />
                </InformationButton>
              </InformationContainer>

              <InformationContainer>
                <InformationButton>
                  <label
                    htmlFor="quizDifficulty"
                    style={{ flexGrow: 1, textAlign: "left", paddingLeft: "5px", color: "white", fontSize: 25 }}
                    >
                    Difficulty
                  </label>
                  <select
                    id="quizDifficulty"
                    value={quizDifficulty}
                    onChange={(e) => setQuizDifficulty(e.target.value)}
                    style={{
                      flexGrow: 1,
                      maxWidth: "100px",
                      padding: "4px",
                      border: "1px solid #ddd",
                      borderRadius: "10px",
                      textAlign: "center",
                      fontSize: 20,
                    }}
                    >
                    <option value="easy">Easy</option>
                    <option value="medium">Medium</option>
                    <option value="hard">Hard</option>
                  </select>
                </InformationButton>
              </InformationContainer>

              <InformationContainer>
                <InformationButton>
                  <label
                    htmlFor="type"
                    style={{ flexGrow: 1, textAlign: "left", paddingLeft: "5px", color: "white", fontSize: 25 }}
                    >
                    Type
                  </label>
                  <select
                    id="type"
                    value={quizType}
                    onChange={(e) => setQuizType(e.target.value)}
                    style={{
                      flexGrow: 1,
                      maxWidth: "100px",
                      padding: "4px",
                      border: "1px solid #ddd",
                      borderRadius: "5px",
                      textAlign: "center",
                      fontSize: 20,
                    }}
                    >
                    <option value="4_multiple_choice">4지선다</option>
                    <option value="ox">OX</option>
                  </select>
                </InformationButton>
              </InformationContainer>
            </Div2Container>
          </DropDownParentContainer>
          <ParentContainer>
            <ButtonRow>
              {/* 항상 보이는 Read Summary 버튼 */}

                          <img className="phoneImage" alt="title" src={readLogo} 
                                      style={{ width: '100%', height: '100%', marginLeft: '24%', margin: '0 auto', marginTop: '35%', objectFit: 'contain'}}
                                      />
                
                          <img className="phoneImage" alt="title" src={riddleLogo} 
                                      style={{ width: '100%', height: '100%', marginLeft: '24%', margin: '0 auto', marginTop: '35%', objectFit: 'contain'}}
                                      />
              {/* <img className="image-size" src="img/summary.png" title="Summary" alt="Summary~"></img>
              <img className="riddle-size" src="img/ReadRiddle.png" alt="Start Riddle"></img> */}
              <ButtonContainer>
                <Button onClick={handleSummary}>
                  <span
                      style={{
                        color: "#ffffff",
                        fontSize: "1.2em",
                        display: "flex",
                        justifyContent: "center",
                        alignItems: "center",
                      }}
                    >
                    Read Summary
                  </span>
                </Button>
              </ButtonContainer>
              
              <ButtonContainer>
                <Button onClick={(e) => handleGenerateQuiz(e)}>
                  <span
                    style={{
                      color: "#ffffff",
                      fontSize: "1.2em",
                      display: "flex",
                      justifyContent: "center",
                      alignItems: "center",
                    }}
                  >
                    Start Riddle
                  </span>
                </Button>
              </ButtonContainer>
            </ButtonRow>
          </ParentContainer>
          </HomeContainer>
          {/* 모달은 요약이 완료되었을 때만 표시 */}
          {showModal && !summaryLoading && (
                <ModalContainer>
                  <MyModal>
                    <SummaryText>
                      <ReactMarkdown>{selectedSummary}</ReactMarkdown>
                    </SummaryText>
                    <CloseButton onClick={closeModal} style={{ marginTop: 25 }}>
                      <AiOutlineClose />
                    </CloseButton>
                  </MyModal>
                </ModalContainer>
              )}

              {/* 로딩 상태는 별도로 표시 */}
              {summaryLoading && (
                <ModalContainer>
                  <ModalContent>
                    <ClipLoader color="#3498db" size={70} />
                    <span style={{ color: "#3498db", marginTop: 20 }}>
                      🧐 선택한 카테고리의 요약 내용을 정리중입니다!
                    </span>
                    <span style={{ color: "#3498db", marginBottom: 5 }}>
                      .... 조금만 기다려주세요 ....
                    </span>
                  </ModalContent>
                </ModalContainer>
              )}
        </>
      )}
    </>
  );
};

export default SetRiddle;


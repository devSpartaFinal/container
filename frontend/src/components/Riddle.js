import React, { useState, useEffect } from "react";
import styled from "styled-components";
import {
  DropdownButton,
  DropdownItem,
  ArrowIcon,
  GenerateButtonContainer,
  GenerateQuizButton,
} from "../styled/IntroStyles";
import {
  DropdownRowContainer,
  DropdownLeftRowMenu,
  DropdownRightRowMenu,
  InformationRowButton,
  InformationRowContainer,
  FormQuizContainer,
  FormQuizTestContainer,
  FormQuizCardContainer,
  TitleContainer,
  QuizContentContainer,
  OptionButton,
  OptionContainer,
  Option2Button,
  Option2Container,
  Option3Button,
  Option3Container,
  SubmitContainer,
  SubmitButton,
  ModalContainer,
  ModalContent,
  CloseButton,
  DetailButton,
  FeedbackContent,
  ContentButton,
} from "../styled/FormChatStyles";
import { useNavigate, useLocation } from "react-router-dom";
import { AiOutlineDown, AiOutlineReload, AiOutlineClose } from "react-icons/ai";
import Session from "./Session";
import Conversation from "./Conversation";
import { chatApiRequest } from "../apiRequest";
import { quizApiRequest } from "../apiRequest";
import MarkdownIt from "markdown-it";
import ClipLoader from "react-spinners/ClipLoader";
import ReactMarkdown from "react-markdown";
import "./app.css";

const Riddle = () => {
  const location = useLocation();
  const [isDropdownOpen1, setIsDropdownOpen1] = useState(false);
  const [isDropdownOpen2, setIsDropdownOpen2] = useState(false);
  const [session_no, setSessionNo] = useState(
    location.state?.session_no || null
  );
  const [selectedCategory, setSelectedCategory] = useState(
    location.state?.selectedCategory || null
  );
  const [selectedTitle, setSelectedTitle] = useState(
    location.state?.selectedTitle || null
  );
  const [selectedTitleIndex, setSelectedTitleIndex] = useState(
    location.state?.selectedTitleIndex || null
  );

  const [quizCount, setQuizCount] = useState(location.state?.quizCount || 10);
  const [quizDifficulty, setQuizDifficulty] = useState(
    location.state?.quizDifficulty || "easy"
  );
  const [quizType, setQuizType] = useState(location.state?.quizType || null);
  const [selectedQuestions, setSelectedQuestions] = useState(
    location.state?.selectedQuestions || []
  );
  const [highlightedAnswers, setHighlightedAnswers] = useState({});
  const [previousAnswers, setPreviousAnswers] = useState({});
  const [selectedOptions, setSelectedOptions] = useState({});
  const [isLoading, setIsLoading] = useState(false);
  const [isGenerateLoading, setIsGenerateLoading] = useState(false);
  const [showModal, setShowModal] = useState(false);

  const [feedbackContent, setFeedbackContent] = useState("");
  const [feedbackDetails, setFeedbackDetails] = useState({});
  const [isFeedbackShown, setIsFeedbackShown] = useState(false);
  const [selectedKeyword, setSelectedKeyword] = useState(location.state?.selectedKeyword ||"");
  const [isAllSelected, setIsAllSelected] = useState(false);

  const closeModal = () => {
    setShowModal(false);
  };

  const handleSelectOption = (quizNumber, option) => {
    setSelectedOptions((prevSelectedOptions) => ({
      ...prevSelectedOptions,
      [quizNumber]: option,
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    try {
      const dataToSubmit = Object.keys(selectedOptions).map((quizNumber) => ({
        q_number: parseInt(quizNumber, 10),
        c_number: selectedOptions[quizNumber],
      }));

      setIsLoading(true);
      const response = await quizApiRequest.post(`/${session_no}/`, {
        answers: dataToSubmit,
      });
      const feedback_response = await quizApiRequest.get(
        `/feedback/${session_no}/`
      );

      console.log("Response from API:", feedback_response.data);
      setFeedbackContent(feedback_response.data.total_feedback);
      setIsLoading(false);
      setShowModal(true);
    } catch (error) {
      console.error("Error submitting quiz answers:", error);
      setIsLoading(false);
    }
  };

  const feedbackDetail = async (event) => {
    event.preventDefault();
  
    // Save & Check Detail 버튼을 클릭했을 때의 상태 업데이트
    setIsChecked(true); // 예시: 체크된 상태로 변경
    setIsAllSelected(true);

    setIsFeedbackShown(true);
    closeModal();
    try {
      setIsLoading(true);
      const detail_response = await quizApiRequest.get(
        `/feedback/detail/${session_no}/`
      );
      const quizes = detail_response.data;

      const selectedAnswers = quizes.reduce((acc, quiz) => {
        const questionNumber = quiz.question.number;
        const correctChoice = quiz.choice.find((choice) => choice.is_correct);

        acc[questionNumber] = correctChoice ? correctChoice.number : null;
        return acc;
      }, {});

      const userPreviousAnswers = quizes.reduce((acc, quiz) => {
        const questionNumber = quiz.question.number;
        acc[questionNumber] = quiz.user_answer?.selected_choice?.number || null;
        return acc;
      }, {});

      const userFeedbackDetails = quizes.reduce((acc, quiz) => {
        const questionNumber = quiz.question.number;
        acc[questionNumber] = quiz.feedback?.feedback || null;
        return acc;
      }, {});

      setHighlightedAnswers(selectedAnswers);
      setPreviousAnswers(userPreviousAnswers);
      setFeedbackDetails(userFeedbackDetails);
      setIsLoading(false);
    } catch (error) {
      console.error("Error fetching feedback details:", error);
      setIsLoading(false);
    }
  };

  const isCorrected = (quizNumber, choiceNumber) =>
    isHighlighted(quizNumber, choiceNumber) &&
    isPreviousAnswer(quizNumber, choiceNumber);

  const isHighlighted = (quizNumber, choiceNumber) =>
    highlightedAnswers[quizNumber] === choiceNumber;

  const isPreviousAnswer = (quizNumber, choiceNumber) =>
    previousAnswers[quizNumber] === choiceNumber;

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
    setSelectedQuestions([]);
    setIsDropdownOpen1(false);
    setSelectedKeyword("");
  };

  const selectTitle = (titleText, titleId) => {
    setSelectedTitle(titleText);
    setSelectedTitleIndex(titleId);
    setIsDropdownOpen2(false);
  };

  const handleGenerateQuiz = async (e) => {
    e.preventDefault();

    setIsFeedbackShown(false);
    setSelectedQuestions([]);
    setSelectedOptions({});
    setFeedbackContent("");
    setPreviousAnswers({});
    setHighlightedAnswers({});
    setFeedbackDetails({});

    setIsGenerateLoading(true);
    setIsChecked(false);

    const formData = {
      category: selectedCategory,
      title_no: selectedTitleIndex,
      type: quizType,
      count: quizCount,
      difficulty: quizDifficulty,
      keyword: selectedKeyword,
      level: "beginner",
    };

    try {
      const response = await quizApiRequest.post("/request/", formData);
      const session_no = response.data.id;
      setSessionNo(session_no);
      const get_question_response = await quizApiRequest.get(`/${session_no}/`);

      const questions = get_question_response.data.questions;

      const initialAnswers = {};
      questions.forEach((question) => {
        const correctChoice = question.choices.find(
          (choice) => choice.is_correct
        );
        initialAnswers[question.id] = correctChoice
          ? correctChoice.number
          : null;
      });

      setSelectedQuestions(questions);
      setPreviousAnswers(initialAnswers);
    } catch (error) {
      console.error("Error generating quiz:", error);
    } finally {
      setIsGenerateLoading(false);
    }
  };

  const isAllOptionsSelected = selectedQuestions.every((quiz) =>
    selectedOptions.hasOwnProperty(quiz.number) && selectedOptions[quiz.number] !== undefined
  );

  const [isChecked, setIsChecked] = useState(false);

  const handleCheckDetail = () => {
    setIsChecked(true); // Save & Check Detail 버튼을 눌렀을 때 상태 변경
  };

  return (
    <>
      {isLoading && (
        <div
          style={{
            position: "fixed",
            top: 0,
            left: 0,
            width: "100%",
            height: "100%",
            backgroundColor: "rgba(0, 0, 0, 0.5)",
            zIndex: 1000,
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          <ClipLoader color="#3498db" size={70} />
          <div style={{ color: "#fff", marginLeft: "20px" }}>
            <h2>🧐 채점중입니다!</h2>
            <h2>.... 조금만 기다려주세요 ....</h2>
          </div>
        </div>
      )}

      {isGenerateLoading && (
        <div
          style={{
            position: "fixed",
            top: 0,
            left: 0,
            width: "100%",
            height: "100%",
            backgroundColor: "rgba(0, 0, 0, 0.5)",
            zIndex: 1000,
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          <ClipLoader color="#3498db" size={70} display="column" />
          <div style={{ color: "#fff", marginLeft: "20px" }}>
            <h2>🧐 문제 재생성 중입니다!</h2>
            <h2>.... 조금만 기다려주세요 (최대 1분 소요)....</h2>
          </div>
        </div>
      )}
      <HomeContainer>
      <DropdownRowContainer>
        <DropdownButton onClick={toggle1Dropdown} style={{ height: '50px'}}>
          {selectedCategory || "Category"}
          <ArrowIcon isOpen={isDropdownOpen1} style={{ paddingRight: '0%'}}>
            <AiOutlineDown />
          </ArrowIcon>
        </DropdownButton>
        <DropdownLeftRowMenu isOpen={isDropdownOpen1}>
          {categoryOptions.map((category) => (
            <DropdownItem
              key={category}
              onClick={() => selectCategory(category)}
            >
              {category}
            </DropdownItem>
          ))}
        </DropdownLeftRowMenu>

        <DropdownButton 
        onClick={() => {
          if (!selectedCategory) {
            alert("카데고리를 먼저 선택해주세요");
            return;
          }
          toggle2Dropdown();
        }}
        style={{ height: '50px'}}>
          {selectedTitle || "Title"}
          <ArrowIcon isOpen={isDropdownOpen2}>
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
                      value={selectedKeyword} 
                      placeholder="Keyword of the document"
                      onChange={(e) => setSelectedKeyword(e.target.value)} 
                      style={{
                        fontSize: '1.0em',
                        marginLeft: '5px',
                        width: '210px',
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

        <ContentButton>
          <span>{quizCount}</span>
        </ContentButton>

        <ContentButton>
          <span>{quizDifficulty}</span>
        </ContentButton>

        <GenerateButtonContainer>
          <GenerateQuizButton onClick={handleGenerateQuiz}>
            <AiOutlineReload
              size={24}
              style={{
                cursor: "pointer",
                marginRight: "10px",
                color: "#ffffff",
              }}
            />
            Generate Button
          </GenerateQuizButton>
        </GenerateButtonContainer>
      </DropdownRowContainer>

      <FormQuizContainer>
        <div className="line"></div>
        <h1 style={{ color: "#3c3c3c", marginLeft: 30, textAlign: "left" }}>
          "{selectedCategory || "Category"}" 에 대한 문제를 풀어봅시다!
        </h1>
        <div className="line"></div>
        <FormQuizTestContainer>
          {Array.isArray(selectedQuestions) &&
            selectedQuestions
              .sort((a, b) => a.number - b.number) // quiz.number 기준으로 오름차순 정렬
              .map((quiz) => (
                <FormQuizCardContainer key={quiz.number} style={{ maxWidth: "100%" }}>
                  <TitleContainer style={{ textAlign: "left" }}>
                    Q{quiz.number}. {quiz.content}
                <div style={{ maxWidth: "100%", overflowX: "auto" }}>
                <ReactMarkdown
                  components={{
                    h1: ({ node, ...props }) => <p {...props} style={{ fontWeight: "bold" }} />,  // h1을 일반 텍스트로 처리
                    h2: ({ node, ...props }) => <p {...props} style={{ fontWeight: "bold" }} />,
                    h3: ({ node, ...props }) => <p {...props} style={{ fontWeight: "bold" }} />,
                    p: ({ node, ...props }) => (
                      <pre
                        style={{
                          fontSize: "0.65em",
                          backgroundColor: "black",
                          color: "white",
                          padding: "10px",
                          whiteSpace: "pre-wrap",
                          wordBreak: "break-word",
                          overflowX: "auto",
                        }}
                        {...props}
                      />
                    ),
                    h1: ({ node, ...props }) => <p {...props} style={{ fontWeight: "bold" }} />,  // h1을 일반 텍스트로 처리
                    h2: ({ node, ...props }) => <p {...props} style={{ fontWeight: "bold" }} />,
                    h3: ({ node, ...props }) => <p {...props} style={{ fontWeight: "bold" }} />,
                    pre: ({ node, ...props }) => (
                      <pre
                        style={{
                          fontSize: "0.65em",
                          backgroundColor: "black",
                          color: "white",
                          padding: "10px",
                          whiteSpace: "pre-wrap",
                          wordBreak: "break-word",
                          overflowX: "auto",
                        }}
                        {...props}
                      />
                    ),
                  }}
                >
                  {quiz.code_snippets}
                </ReactMarkdown>
                </div>
              </TitleContainer>

              <QuizContentContainer>
              {quiz.answer_type === "ox" ? (
                quiz.choices[0].content.length <= 1 ? (
                  <Option2Container>
                    {quiz.choices.map((choice) => (
                      <Option2Button
                        key={choice.number}
                        style={{
                          backgroundColor: isCorrected(quiz.number, choice.number)
                            ? "#43b738" // 정답인 경우 초록색
                            : selectedOptions[quiz.number] === choice.number
                            ? "#007bff" // 사용자가 선택한 경우 푸른색
                            : isHighlighted(quiz.number, choice.number)
                            ? "#e57f7b" // 오답이고 하이라이트된 경우 빨간색
                            : isPreviousAnswer(quiz.number, choice.number)
                            ? "#cccccc" // 이전에 선택된 경우 회색
                            : "transparent", // 기본값은 없음
                          color: isHighlighted(quiz.number, choice.number)
                            ? "#000000"
                            : "",
                          fontWeight: isHighlighted(quiz.number, choice.number)
                            ? "bold" // 하이라이트된 경우 글자 굵게
                            : "normal", // 기본은 normal
                        }}
                        className={
                          selectedOptions[quiz.number] === choice.number ? "selected" : ""
                        }
                        onClick={() => handleSelectOption(quiz.number, choice.number)}
                        disabled={isFeedbackShown} // feedbackDetail 후 버튼 비활성화
                      >
                        {choice.content}
                      </Option2Button>
                    ))}
                  </Option2Container>
                ) : (
                  // choices의 길이가 2일 때 다른 UI를 구성
                  <Option3Container>
                    {quiz.choices.map((choice, index) => (
                      <Option3Button
                        key={choice.number}
                        style={{
                          backgroundColor: isCorrected(quiz.number, choice.number)
                            ? "#43b738" // 정답인 경우 초록색
                            : selectedOptions[quiz.number] === choice.number
                            ? "#007bff" // 사용자가 선택한 경우 푸른색
                            : isHighlighted(quiz.number, choice.number)
                            ? "#e57f7b" // 오답이고 하이라이트된 경우 빨간색
                            : isPreviousAnswer(quiz.number, choice.number)
                            ? "#cccccc" // 이전에 선택된 경우 회색
                            : "transparent", // 기본값은 없음
                          color: isHighlighted(quiz.number, choice.number)
                            ? "#000000"
                            : "",
                          fontWeight: isHighlighted(quiz.number, choice.number)
                            ? "bold" // 하이라이트된 경우 글자 굵게
                            : "normal", // 기본은 normal
                        }}
                        className={
                          selectedOptions[quiz.number] === choice.number ? "selected" : ""
                        }
                        onClick={() => handleSelectOption(quiz.number, choice.number)}
                        disabled={isFeedbackShown} // feedbackDetail 후 버튼 비활성화
                      >
                        {choice.content}
                      </Option3Button>
                    ))}
                  </Option3Container>
                )
              ) : (
                <OptionContainer>
                  {quiz.choices.map((choice) => (
                    <OptionButton
                      key={choice.number}
                      style={{
                        backgroundColor: isCorrected(quiz.number, choice.number)
                          ? "#43b738" // 정답인 경우 초록색
                          : selectedOptions[quiz.number] === choice.number
                          ? "#007bff" // 사용자가 선택한 경우 푸른색
                          : isHighlighted(quiz.number, choice.number)
                          ? "#e57f7b" // 오답이고 하이라이트된 경우 빨간색
                          : isPreviousAnswer(quiz.number, choice.number)
                          ? "#cccccc" // 이전에 선택된 경우 회색
                          : "transparent", // 기본값은 없음
                        color: isHighlighted(quiz.number, choice.number)
                          ? "#000000"
                          : "",
                        fontWeight: isHighlighted(quiz.number, choice.number)
                          ? "bold" // 하이라이트된 경우 글자 굵게
                          : "normal", // 기본은 normal
                      }}
                      className={
                        selectedOptions[quiz.number] === choice.number ? "selected" : ""
                      }
                      onClick={() => handleSelectOption(quiz.number, choice.number)}
                      disabled={isFeedbackShown}
                    >
                      {choice.content}
                    </OptionButton>
                  ))}
                </OptionContainer>
              )}
            </QuizContentContainer>

                    {isFeedbackShown && feedbackDetails[quiz.number] && (
                      <FeedbackContent  style={{ textAlign: "left", marginTop: "-200px"}}>
                        {feedbackDetails[quiz.number]}
                      </FeedbackContent>
                    )}
              </FormQuizCardContainer>
            ))}
        </FormQuizTestContainer>
        <SubmitContainer>
        <SubmitButton
          onClick={handleSubmit}
          disabled={!isAllOptionsSelected || isChecked}
          className="submit-button"
          style={{
            cursor: (!isAllOptionsSelected || isChecked) ? 'not-allowed' : 'pointer',
            position: 'relative',
          }}
        >
          Submit
          {/* isChecked 상태에 따라 다르게 메시지 출력 */}
          {(isChecked || !(isAllOptionsSelected)) && (
            <div style={{
              position: 'absolute',
              top: '150%',
              left: '50%',
              transform: 'translateX(-50%)',
              color: 'red',
              fontSize: '1em',
              opacity: 1,
              pointerEvents: 'none',
              paddingBottom: '3%',
              width: '100%',
              cursor: 'not-allowed',
            }}>
              {isChecked ? '피드백 페이지에서 세부 피드백을 다시 확인할 수 있습니다.' : '모든 답을 선택한 후 답안을 제출할 수 있습니다.'}
            </div>
          )}
        </SubmitButton>
        </SubmitContainer>
      </FormQuizContainer>

      {showModal && (
        <ModalContainer>
          <ModalContent>
            <h2 style={{color: "black"}}>📝 채점결과</h2>
            <p
              style={{
                whiteSpace: "pre-wrap",
                wordWrap: "break-word",
                maxHeight: "300px",
                overflowY: "auto",
                padding: "10px",
                color: "black",
              }}
            >
              {feedbackContent}
            </p>
            <DetailButton onClick={(event) => feedbackDetail(event)}>Save & Check Detail</DetailButton>
            <CloseButton onClick={closeModal}>
              {" "}
              <AiOutlineClose />{" "}
            </CloseButton>
          </ModalContent>
        </ModalContainer>
      )}
      </HomeContainer>
    </>
  );
};

export default Riddle;

// 스타일 정의
const HomeContainer = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
  width: 100%;
  background: linear-gradient(135deg, #f6d365, #fda085);
  color: #ffffff;
  font-family: "Arial", sans-serif;
  text-align: center;
`;
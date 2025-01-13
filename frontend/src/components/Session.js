import React, { useState, useEffect, useRef } from "react";
import {
  SessionContainer,
  ChildSessionContainer,
  HeaderContainer,
  HeaderTitle,
  SessionHeaderContainer,
  SessionParentContainer,
  ButtonTitle,
} from "../styled/ChatHomeStyles";
import {
  SessionListContainer,
  SessionList,
  SessionItem,
  AddSessionButton,
  ImageBox,
} from "../styled/ChatSessionStyles";
import { chatApiRequest } from "../apiRequest";
import ReactMarkdown from "react-markdown";

const Session = ({
  onSessionClick,
  resetSelectedSession,
  setSessionNo,
  setMessages,
  disabled,
}) => {
  const [sessions, setSessions] = useState([]);
  const [loading, setLoading] = useState(true);
  const [selectedSessionId, setSelectedSessionId] = useState(null);
  const sessionContainerRef = useRef(null);
  const selectedSessionRef = useRef(null);

  useEffect(() => {
    if (resetSelectedSession == true || setSessionNo === null) {
      setSelectedSessionId(null);
      setSessions([]);
    }
  }, [resetSelectedSession]);

  const fetchSessions = async () => {
    try {
      const response = await chatApiRequest.get("/");
      setSessions(response.data.chatsession);
      setLoading(false);
    } catch (error) {
      console.error("Error fetching sessions:", error);
      setLoading(false);
    }
  };

  useEffect(() => {
    const interval = setInterval(() => {
      fetchSessions();
    }, 10000);

    return () => clearInterval(interval);
  }, []);

  useEffect(() => {
    if (selectedSessionId && selectedSessionRef.current) {
      selectedSessionRef.current.scrollIntoView({
        behavior: "smooth",
        block: "center",
      });
    } else if (sessionContainerRef.current) {
      sessionContainerRef.current.scrollTop =
        sessionContainerRef.current.scrollHeight;
    }
  }, [sessions, selectedSessionId]);

  const handleClick = async (session_no) => {
    if (disabled) return;

    try {
      setLoading(true);
      await fetchConversation(session_no);
      resetSelectedSession(false);
      setLoading(false);
    } catch (error) {
      console.error("Error handling session click:", error);
      setLoading(false);
    }
  };

  const fetchConversation = async (session_no) => {
    try {
      const response = await chatApiRequest.get(`/qna/${session_no}/`);
      const content_info = response.data.content_info;

      const conversationMessages = response.data.chatlog
        .filter((msg) => msg.USER || msg.AI)
        .map((msg, index) => ({
          id: index + 1,
          text: msg.USER || msg.AI,
          author: msg.USER ? "User" : "BOT",
        }));

      resetSelectedSession(false);
      setMessages(conversationMessages);
      setSelectedSessionId(session_no);
      onSessionClick(
        conversationMessages,
        session_no,
        content_info.category,
        content_info.title_no
      );
    } catch (error) {
      console.error("Error fetching conversation:", error);
    }
  };

  return (
    <SessionParentContainer>
      <HeaderTitle>대화 내역</HeaderTitle>

      <SessionContainer ref={sessionContainerRef}>
        {loading ? (
          <p style={{ marginLeft: "30px", fontSize: "20px", color: "black", fontWeight: "bold"}}>이전 대화내역 로드 중 ...</p>
        ) : (
          <SessionList>
            {sessions.map((session) => (
              <SessionItem
                key={session.id}
                ref={
                  session.id === selectedSessionId ? selectedSessionRef : null
                }
                onClick={() => handleClick(session.id)}
                isSelected={session.id === selectedSessionId}
              >
                <div style={{ display: "flex", alignItems: "flex-start" }}>
                  <ImageBox></ImageBox>
                  <div
                    style={{
                      display: "flex",
                      flexDirection: "column",
                      marginLeft: "10px",
                      marginTop: "-10px",
                    }}
                  >
                    <span style={{ fontSize: "13px", fontWeight: "bold", textAlign: "left" }}>
                    <ReactMarkdown>
                      {session.title
                        .replace(/"/g, "") // 큰따옴표 제거
                        .replace("세션 제목: ", "") // "세션 제목: " 제거
                        .replace("세션 제목 요약: ", "") // "세션 제목 요약: " 제거
                      }
                    </ReactMarkdown>
                    </span>
                    <span
                      style={{
                        fontSize: "10px", color: "#333", marginTop: "-10px", textAlign: "left"
                      }}
                    >
                      {session.conversation?.length > 1
                        ? session.conversation.slice(-1)[0]?.AI.slice(0, 60) ||
                          session.conversation.slice(-1)[0]?.USER.slice(0, 60)
                        : "No conversation"}
                      ...
                    </span>
                  </div>
                </div>
              </SessionItem>
            ))}
          </SessionList>
        )}
      </SessionContainer>
    </SessionParentContainer>
  );
};

export default Session;

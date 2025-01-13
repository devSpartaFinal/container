import React, { useRef, useState, useEffect } from "react";
import { ReactComponent as SendButton } from "../assets/send.svg";
import {
  MessageForm,
  ChatFooterDivider,
  ChatFooterContainer,
  LoadingSpinner,
} from "../styled/ChatFormStyles";
import { chatApiRequest } from "../apiRequest";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faDoorOpen,
  faPaperPlane,
  faSquarePlus,
  faSquareArrowUpRight,
} from "@fortawesome/free-solid-svg-icons";

import {
  AiOutlineClose,
  MdChatBubbleOutline,
  AiOutlineMessage,
} from "react-icons/ai";

const ChatForm = ({
  onSendMessage,
  onBotMessage,
  category,
  title_no,
  session_no,
  setSessionNo,
  loading,
  setLoading,
}) => {
  const inputRef = useRef(null);
  const [currentCategory, setCurrentCategory] = useState(category);
  const [currentTitleNo, setCurrentTitleNo] = useState(title_no);
  const [localSessionNo, setLocalSessionNo] = useState(session_no);

  useEffect(() => {
    setCurrentCategory(category);
  }, [category]);

  useEffect(() => {
    setCurrentTitleNo(title_no);
  }, [title_no]);

  useEffect(() => {
    setLocalSessionNo(session_no);
  }, [session_no]);

  const onSubmit = async (e) => {
    e.preventDefault();
    if (!inputRef.current) return;
    const messageText = inputRef.current.value.trim();

    if (messageText) {
      onSendMessage(messageText);
      inputRef.current.value = "";
      setLoading(true);
      const formData = new FormData();
      formData.append("user_input", messageText);
      formData.append("category", currentCategory);
      formData.append("title_no", currentTitleNo);

      try {
        let response = "";
        if (
          localSessionNo === null ||
          localSessionNo === 0 ||
          session_no === null
        ) {
          response = await chatApiRequest.post(`/qna/`, formData);
          const newSessionNo = response.data.id;
          setLocalSessionNo(newSessionNo);
          setSessionNo(newSessionNo);
        } else {
          response = await chatApiRequest.post(`/qna/${session_no}/`, formData);
        }

        if (response.data) {
          onBotMessage(response.data.AI, true);
        }
        setLoading(false);
      } catch (error) {
        console.error("Error sending message:", error);
      }
    }
  };

  return (
    <>
      <ChatFooterContainer>
        <ChatFooterDivider />
      </ChatFooterContainer>

      <MessageForm onSubmit={onSubmit}>
        <input
          type="text"
          placeholder="Type a message here"
          ref={inputRef}
          style={{
            marginLeft: "4%",
            outline: "2px solid #eeeeeeee",
            borderRadius: "8px",
            paddingLeft: "15px",
          }}
          disabled={loading}
        />

        <button type="submit" disabled={loading}>
          {loading ? (
            <LoadingSpinner />
          ) : (
            <FontAwesomeIcon
              icon={faSquareArrowUpRight}
              size="2x"
              style={{
                position: "relative",
                height: "1.5em",
                width: "1.5em",
                color: "#63b5da",
              }}
            />
          )}
        </button>
      </MessageForm>
    </>
  );
};

export default ChatForm;

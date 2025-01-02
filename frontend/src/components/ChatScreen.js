import React, { useState } from "react";
import { ChatScreenContainer, ChatHeaderContainer, ChatHeaderDescription, ChatHeaderDivider, ChatHeaderTitle, CenterContainer } from "../styled/ChatScreenStyles";
import { Chat } from "../styled/ConversationStyles";
import ChatForm from "./ChatForm";
import Conversation from "./Conversation";

const ChatScreen = () => {
  const [messages, setMessages] = useState([
    { id: 1, text: "Hello, how can I help you?", author: "BOT" },
  ]);

  const [title, setTitle] = useState('🕵️ About Chatbot');
  const [description, setDescription] = useState(
    'AI 8기 스파르타 과정에서 배운 자료들과 추가 오픈소스 등을 바탕으로 AI가 퀴즈를 내고 사용자가 정답을 입력하면 이에 대해 피드백해주는 학습용 챗봇입니다.'
  );

  const changeContent = () => {
    setTitle('📚 About JavaScript');
    setDescription(
      'JavaScript is a programming language that is commonly used to create interactive effects within web browsers.'
    );
  };


  const onSendMessage = (messageText) => {
    const newMessage = {
      id: messages.length + 1,
      text: messageText,
      author: 'User',
    };
    setMessages([...messages, newMessage]);
  };

  return (
    <ChatScreenContainer>
        <ChatHeaderContainer>
            <ChatHeaderTitle>{title}</ChatHeaderTitle>
            <ChatHeaderDescription>{description}</ChatHeaderDescription>
            <ChatHeaderDivider />
        </ChatHeaderContainer>

        <CenterContainer>
          <Chat>
            <Conversation messages={messages} />
            <ChatForm onSendMessage={onSendMessage} />
          </Chat>
        </CenterContainer>
       
        

    </ChatScreenContainer>
  );
};

export default ChatScreen;

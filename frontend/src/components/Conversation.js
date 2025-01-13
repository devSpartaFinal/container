import React, {useEffect, useRef} from 'react';
import { ConversationContainer, MessageContent, BotMessage } from "../styled/ConversationStyles";
import styled from 'styled-components';
import { ReactComponent as ProfileList } from "../assets/profile1.svg";
import MarkdownIt from "markdown-it";

const markdownParser = new MarkdownIt();
const MessageContainer = styled.div`
    display: flex;
    gap: 20px;
    color: #fff;
    flex-direction: ${props => props.incomingMessage ? 'row' : 'row-reverse'};

    ${MessageContent} {
        background: ${props => props.incomingMessage ? 'var(--blue-gradient)' : '#fff'};
        border: ${props => props.incomingMessage ? 'none' : '1px solid rgba(0, 0, 0, 0.1)'};
        color: ${props => props.incomingMessage ? '#fff' : '#000'};
        box-shadow: ${props => props.incomingMessage ? 'rgba(32, 112, 198, 0.4)' : 'rgba(0, 0, 0, 0.15)'} 2px 3px 15px;
        border-radius: ${props => props.incomingMessage ? '0 8px 8px 8px' : '8px 0 8px 8px'};
    }
`;
const renderMessage = (message) => {
  const { id, text, author, isMarkdown } = message;
  const isBot = author === "BOT" || author === "ai";

    let renderedText = markdownParser.render(text);
    renderedText = renderedText.replace(/<code>/g, '<code style="background-color: black; color: white; padding: 2px 4px; border-radius: 4px;">');

    renderedText = renderedText.replace(/```([a-zA-Z0-9]+)?\n([\s\S]+?)\n```/g, (match, lang, code) => {
      return `<pre style="background-color: #1e1e1e; padding: 10px; border-radius: 4px;">
                  <code class="language-${lang}" style="color: white; font-family: monospace;">${code}</code>
                </pre>`;
    });

    renderedText = renderedText.replace(/<pre>/g, '<pre style="background-color: #1e1e1e; padding: 10px; border-radius: 4px; color: white;">');
    renderedText = renderedText.replace(/<code>/g, '<code style="background-color: #1e1e1e; color: white; font-family: monospace;">');
  
  const messageStyle = {
    textAlign: "left",
    fontFamily: "Arial, sans-serif",
    lineHeight: "1.6",
  };


  if (isMarkdown && isBot) {
    return (
      <div
        key={id}
        style={{
          display: "flex",
          alignItems: "center",
          justifyContent: "flex-start",
        }}
      >
        
        <BotMessage
        dangerouslySetInnerHTML={{ __html: renderedText }}
        style={messageStyle}
      />
      </div>
    );
  }

  return isBot ? (
    <div key={id} style={{ display: "flex", alignItems: "center", maxWidth: '80%' }}>
      
      <BotMessage
        dangerouslySetInnerHTML={{ __html: renderedText }}
        style={messageStyle}
      />
    </div>
  ) : (
    <MessageContainer key={id} incomingMessage={author !== "User" && author !== "user"}>
      <ProfileList width="40" height="40" />
      <MessageContent
        dangerouslySetInnerHTML={{ __html: renderedText }}
        style={messageStyle}
      />
    </MessageContainer>
  );
};

  
const Conversation = ({ messages }) => {
  const containerRef = useRef(null);

  useEffect(() => {
    if (containerRef.current) {
      containerRef.current.scrollTop = containerRef.current.scrollHeight;
    }
  }, [messages]); 

  return (
    <ConversationContainer ref={containerRef}>
      {messages.map((message) => renderMessage(message))}
    </ConversationContainer>
  );
};
  
  export default Conversation;
  
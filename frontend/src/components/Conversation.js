import React from 'react';
import { ConversationContainer, MessageContent, BotMessage } from "../styled/ConversationStyles";
import styled from 'styled-components';
import { ReactComponent as ProfileList } from "../assets/profile1.svg";
import { ReactComponent as BotProfile } from "../assets/bot.svg";

const MessageContainer = styled.div`
    display: flex;
    gap: 20px;
    color: #fff;
    font-size: 1rem;
    flex-direction: ${props => props.incomingMessage ? 'row' : 'row-reverse'};

    ${MessageContent} {
        background: ${props => props.incomingMessage ? 'var(--blue-gradient)' : '#fff'};
        border: ${props => props.incomingMessage ? 'none' : '1px solid rgba(0, 0, 0, 0.1)'};
        color: ${props => props.incomingMessage ? '#fff' : '#000'};
        box-shadow: ${props => props.incomingMessage ? 'rgba(32, 112, 198, 0.4)' : 'rgba(0, 0, 0, 0.15)'} 2px 3px 15px;
        border-radius: ${props => props.incomingMessage ? '0 8px 8px 8px' : '8px 0 8px 8px'};
    }
`;

const Conversation = ({ messages }) => {
    return (
        <ConversationContainer>
            {messages.map((message) => {
                const { text, author, id } = message;
                const isBot = author === 'BOT';

                return isBot ? (
                    <div key={id} style={{ display: "flex", alignItems: "center" }}>
                        <BotProfile width="40" height="40" />
                        <BotMessage>{text}</BotMessage>
                    </div>
                ) : (
                    <MessageContainer key={id} incomingMessage={author !== "User"}>
                        <ProfileList width="40" height="40" />
                        <MessageContent>{text}</MessageContent>
                    </MessageContainer>
                );
            })}
        </ConversationContainer>
    );
};

export default Conversation;
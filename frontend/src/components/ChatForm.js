import React, { useRef } from 'react';
import { ReactComponent as SendButton } from "../assets/send.svg";
import { MessageForm, ChatFooterDivider, ChatFooterContainer } from '../styled/ChatFormStyles';

const ChatForm = ({ onSendMessage }) => {
    const inputRef = useRef(null);

    const onSubmit = (e) => {
        e.preventDefault();  
        const messageText = inputRef.current.value.trim();

        if (messageText) {
            console.log("Message text in ChatForm: ", messageText); 
            onSendMessage(messageText); 
        }

        inputRef.current.value = '';  
        inputRef.current.focus();  
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
                />

                <div>
                <button type="submit">
                        <SendButton width="100" height="100" />
                    </button>

                </div>
            </MessageForm>

        </>
    );
};

export default ChatForm;

import React, { useState, useEffect, useRef } from "react";

// 쿠키 값을 가져오는 함수
const getCookie = (name) => {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) return parts.pop().split(";").shift();
    return null;
};

const MultiChatRoom = () => {
    const [messages, setMessages] = useState([]);
    const [message, setMessage] = useState("");
    const [username, setUsername] = useState(""); // username 상태 추가
    const socket = useRef(null);
    
    const wsUrl = "ws://localhost:8000/ws/chat/global_room/"; // 고정된 room_name

    // 컴포넌트 로드 시 쿠키에서 username 가져오기
    useEffect(() => {
        const savedUsername = getCookie("username");
        if (savedUsername) {
            setUsername(savedUsername);
        } else {
            console.warn("쿠키에서 username을 찾을 수 없습니다.");
        }
    }, []);

    // WebSocket 연결
    useEffect(() => {
        socket.current = new WebSocket(wsUrl);

        socket.current.onopen = () => {
            console.log("WebSocket is connected to global_room");
        };

        socket.current.onmessage = (event) => {
            const data = JSON.parse(event.data);
            setMessages((prevMessages) => [...prevMessages, data]);
        };

        socket.current.onclose = () => {
            console.log("WebSocket connection closed");
        };

        return () => {
            if (socket.current) {
                socket.current.close();
            }
        };
    }, []);

    const sendMessage = () => {
        if (socket.current && socket.current.readyState === WebSocket.OPEN) {
            const timestamp = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', hour12: false });
            socket.current.send(
                JSON.stringify({ message, username, timestamp })
            );
            setMessage("");
        } else {
            console.log("WebSocket is not connected yet.");
        }
    };

    return (
        <div className="chat-container">
            <h1 className="header">Riddle Riddle 채팅방</h1>
            <div className="chat-box">
                {messages.map((msg, index) => (
                    <div key={index} className="chat-message">
                        <p>
                            <strong>{msg.username}: </strong>
                            {msg.message} <small>{msg.timestamp}</small>
                        </p>
                    </div>
                ))}
            </div>
            <div className="input-container">
                <input
                    type="text"
                    value={message}
                    placeholder="메시지를 입력하세요..."
                    onChange={(e) => setMessage(e.target.value)}
                    onKeyPress={(e) => e.key === "Enter" && sendMessage()}
                />
                <button onClick={sendMessage}>전송</button>
            </div>
        </div>
    );
};

export default MultiChatRoom;

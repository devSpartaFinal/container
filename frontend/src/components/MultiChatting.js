import React, { useState, useEffect, useRef } from "react";
import { useLocation } from "react-router-dom";
import "./MultiChatRoom.css";
import {
    HomeContainer,
  } from "../styled/MultiChattingStyles";


// 쿠키 값을 가져오는 함수
const getCookie = (name) => {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) return parts.pop().split(";").shift();
    return null;
};

const MultiChatRoom = () => {
    const username = localStorage.getItem("username")
    const location = useLocation();
    const [messages, setMessages] = useState([]);
    const [message, setMessage] = useState("");
    const [participants, setParticipants] = useState([]);
    const socket = useRef(null);
    
    const wsUrl = "ws://localhost:8000/ws/chat/global_room/"; // 고정된 room_name

    // WebSocket 연결
    useEffect(() => {
        
        if (socket.current) {
            socket.current.close(); // disconnect 메서드 호출
        }
        socket.current = new WebSocket(wsUrl); // connect 메서드 호출

        socket.current.onopen = () => {
            console.log("WebSocket is connected to 'global_room'");
            // 서버에 현재 사용자의 참여 알림 전송
            if (socket.current.readyState === WebSocket.OPEN) {
                socket.current.send(JSON.stringify({ type: "join", username }));
            }
        };

        socket.current.onmessage = (event) => {
            const data = JSON.parse(event.data);
            // 일반 메시지 수신
            if (data.type === "message") {
                setMessages((prevMessages) => [...prevMessages, data]);
            }
            // 참여자 목록 수신
            else if (data.type === "participants") {
                setParticipants(data.participants);
            }
        };

        socket.current.onclose = () => {
            console.log("WebSocket connection closed");
            // if (socket.current.readyState === WebSocket.OPEN) {
            //     socket.current.send(JSON.stringify({ type: "leave", username }));
            // }
        };

        // beforeunload 이벤트를 추가하여 페이지를 떠날 때 leave 메시지 전송
        const handleBeforeUnload = () => {
            if (socket.current && socket.current.readyState === WebSocket.OPEN) {
                socket.current.send(JSON.stringify({ type: "leave", username }));
            }
        };
        window.addEventListener("beforeunload", handleBeforeUnload);

        return () => {
            // beforeunload 이벤트 제거
            window.removeEventListener("beforeunload", handleBeforeUnload);

            if (socket.current) {
                // 서버에 현재 사용자의 나가기 알림 전송
                // if (socket.current.readyState === WebSocket.OPEN) {
                //     socket.current.send(JSON.stringify({ type: "leave", username }));
                // }
                socket.current.close(); // disconnect 메서드 호출
            }
        };
    }, [username], location);

    const sendMessage = () => {
        if (socket.current && socket.current.readyState === WebSocket.OPEN) {
            const timestamp = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', hour12: false });
            socket.current.send(
                JSON.stringify({ type: "user_message", message, username, timestamp })
            );
            setMessage("");
        } else {
            console.log("WebSocket is not connected yet.");
        }
    };

    return (
            <div className="chat-container">
                <h1 className="header">Riddle Riddle 채팅방</h1>
                <div className="chat-room">
                    <div className="chat-box">
                        {messages.map((msg, index) => (
                            <div key={index} className={`chat-message ${
                                msg.username === username ? "chat-own" : "chat-other"
                            }`}>
                                <p>
                                    <strong>{msg.username}</strong><br />
                                    <div
                                        className={`chatting-message ${
                                            msg.username === username ? "own-message" : "other-message"
                                        }`}
                                    >{msg.message}</div>
                                    {/* <small>{msg.timestamp}</small> */}
                                </p>
                            </div>
                        ))}
                    </div>
                    <div className="participants-box">
                        <h2>참여자 목록</h2>
                        <ul>
                            {participants.map((participant, index) => (
                                <li key={index}>{participant}</li>
                            ))}
                        </ul>
                    </div>
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


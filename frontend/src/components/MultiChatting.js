import React, { useState, useEffect } from "react";

const MultiChatRoom = ({ roomName }) => {
    const [messages, setMessages] = useState([]);
    const [message, setMessage] = useState("");
    const [timeRemaining, setTimeRemaining] = useState(""); // 남은 시간
    const wsUrl = `ws://localhost:8000/ws/chat/${roomName}/`;

    // 남은 시간 계산 함수
    const calculateTimeRemaining = () => {
        const deadline = new Date("2025-01-20T23:59:59"); // 마감 시간
        const now = new Date();
        const diff = deadline - now;

        if (diff <= 0) {
            setTimeRemaining("마감!");
            return;
        }

        const hours = Math.floor((diff / (1000 * 60 * 60)) + (diff / (1000 * 60 * 60)) % 24);
        const minutes = Math.floor((diff / (1000 * 60)) % 60);
        const seconds = Math.floor((diff / 1000) % 60);

        setTimeRemaining(`${hours}시간 ${minutes}분 ${seconds}초`);
    };

    // WebSocket 연결
    useEffect(() => {
        const socket = new WebSocket(wsUrl);

        socket.onmessage = (event) => {
            const data = JSON.parse(event.data);
            setMessages((prevMessages) => [...prevMessages, data]);
        };

        socket.onclose = () => {
            console.log("WebSocket connection closed");
        };

        return () => socket.close();
    }, [wsUrl]);

    // 기간 업데이트
    useEffect(() => {
        calculateTimeRemaining(); // 컴포넌트가 렌더링될 때 초기 계산
        const interval = setInterval(calculateTimeRemaining, 1000); // 매초마다 업데이트

        return () => clearInterval(interval); // 컴포넌트가 언마운트될 때 정리
    }, []);

    const sendMessage = () => {
        const socket = new WebSocket(wsUrl);
        socket.send(JSON.stringify({ message }));
        setMessage("");
    };

    return (
        <div>
            <div>
                {messages.map((msg, index) => (
                    <p key={index}>
                        <strong>{msg.username}: </strong> {msg.message}
                    </p>
                ))}
            </div>
            <h1>🔧 프로젝트 마감까지 {timeRemaining} 남았습니다! 🔧</h1>
            <input
                type="text"
                value={message}
                onChange={(e) => setMessage(e.target.value)}
                onKeyPress={(e) => e.key === "Enter" && sendMessage()}
            />
        </div>
    );
};

export default MultiChatRoom;

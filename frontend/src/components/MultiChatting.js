import React, { useState, useEffect, useRef } from "react";
import { useLocation } from "react-router-dom";
import "./MultiChatRoom.css";

const MultiChatRoom = () => {
    const username = localStorage.getItem("username");
    const location = useLocation();
    const [messages, setMessages] = useState([]);
    const [message, setMessage] = useState("");
    const [participants, setParticipants] = useState([]);
    const [popQuizMessage, setPopQuizMessage] = useState("");
    const [popQuizTimeLeft, setPopQuizTimeLeft] = useState(null);
    const [popQuizActive, setPopQuizActive] = useState(false);
    const [isAnswer, setisAnswer] = useState(0);
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
            if (data.type === "user_message") {
                setMessages((prevMessages) => [...prevMessages, data]);
            }
            // 참여자 목록 수신
            else if (data.type === "participants") {
                setParticipants(data.participants);
            }
            // POP QUIZ 결과 처리
            else if (data.type === "pop_quiz_result") {
                setMessages((prevMessages) => [...prevMessages, data]);
                setPopQuizActive(false); // POP QUIZ 비활성화
                setisAnswer(1); // 정답 입력으로 변경
            }
        };

        socket.current.onclose = () => {
            console.log("WebSocket connection closed");
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
                socket.current.close(); // disconnect 메서드 호출
            }
        };
    }, [username, location]);

    // POP QUIZ 타이머 관리
    useEffect(() => {
        const updatePopQuizStatus = () => {
            if (isAnswer === 0 && popQuizActive) return; // POP QUIZ 활성화 중에는 타이머 업데이트 중단
    
            const now = new Date();
            const minutes = now.getMinutes();
            const nextQuizMinutes = Math.ceil(minutes / 5) * 5;
            const nextQuizTime = new Date(now.getTime());
            nextQuizTime.setMinutes(nextQuizMinutes);
            nextQuizTime.setSeconds(0);
    
            const timeToNextQuiz = Math.max(0, nextQuizTime - now);
    
            if (timeToNextQuiz <= 0 && popQuizActive === false) { // POP QUIZ 활성화 조건
                setPopQuizMessage("POP QUIZ");
                setPopQuizActive(true);
                setPopQuizTimeLeft(null);
                // 서버에 POP QUIZ 활성화 알림 전송
                if (socket.current && socket.current.readyState === WebSocket.OPEN) {
                    socket.current.send(
                        JSON.stringify({
                            type: "pop_quiz_active", // 새로운 메시지 타입
                            active: true, // POP QUIZ 활성화 상태
                        })
                    );
                }
            } else {
                setPopQuizMessage("다음 POP QUIZ 까지");
                setPopQuizTimeLeft(Math.ceil(timeToNextQuiz / 1000));
                setPopQuizActive(false);
            }
        };
    
        // 사용자가 정답을 맞춘 경우 타이머 리셋
        if (isAnswer === 1) {
            const now = new Date();
            const minutes = now.getMinutes();
            const nextQuizMinutes = Math.ceil(minutes / 5) * 5;
            const nextQuizTime = new Date(now.getTime());
            nextQuizTime.setMinutes(nextQuizMinutes);
            nextQuizTime.setSeconds(0);
            
            const timeToNextQuiz = Math.max(0, nextQuizTime - now);
            setPopQuizTimeLeft(Math.ceil(timeToNextQuiz / 1000));
            setisAnswer(0); // 정답 입력 상태 초기화
        }
    
        updatePopQuizStatus(); // 초기 실행
        const interval = setInterval(updatePopQuizStatus, 1000); // 1초 간격으로 상태 업데이트
    
        return () => clearInterval(interval); // 컴포넌트 언마운트 시 정리
    }, [popQuizActive, isAnswer]);
    


    const formatTime = (seconds) => {
        const mins = Math.floor(seconds / 60);
        const secs = seconds % 60;
        return `${String(mins).padStart(2, "0")}분 ${String(secs).padStart(2, "0")}초`;
    };


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
                <div className="pop-quiz-display">
                    {popQuizMessage === "POP QUIZ" ? (
                    <div>
                        <h2>{popQuizMessage}</h2>
                    </div>
                    ) : (
                    <div>
                        <h2>{popQuizMessage}</h2>
                        <p>{popQuizTimeLeft !== null ? formatTime(popQuizTimeLeft) : ""} 남았습니다.</p>
                    </div>
                    )}
                </div>
                <div className="chat-room">
                <div className="chat-box">
                    {messages.map((msg, index) => (
                        <div
                            key={index}
                            className={`chat-message ${
                                msg.username === username ? "chat-own" : "chat-other"
                            }`}
                        >
                            <p>
                                {msg.username === username ? (
                                    <>
                                        {/* msg.timestamp은 메시지 왼쪽에 표시 */}
                                        <small style={{ marginRight: '10px', fontSize: '0.8em', color: 'gray', display: 'inline-block' }}>{msg.timestamp}</small>
                                        <div
                                            className={`chatting-message own-message`}
                                            style={{ display: 'inline-block'}}
                                        >
                                            {msg.message}
                                        </div>
                                    </>
                                ) : (
                                    <>
                                        {/* msg.username과 msg.message가 함께 표시되고, msg.timestamp은 메시지 오른쪽에 표시 */}
                                        <strong>{msg.username}</strong><br/>
                                        <div
                                            className={`chatting-message other-message`}
                                        >
                                            {msg.message}
                                        </div>
                                        <small style={{ marginLeft: '10px', fontSize: '0.8em', color: 'gray', display: 'inline-block' }}>{msg.timestamp}</small>
                                    </>
                                )}
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


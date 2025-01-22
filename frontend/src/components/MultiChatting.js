import React, { useState, useEffect, useRef } from "react";
import { useLocation } from "react-router-dom";
import "./MultiChatRoom.css";
import ReactMarkdown from "react-markdown";
import puzzlebook from '../assets/puzzlebook.png'
import popquiz_width from '../assets/popquiz_width.png'

const MultiChatRoom = () => {
    const myusername = localStorage.getItem("username");
    const location = useLocation();
    const [messages, setMessages] = useState([]);
    const [message, setMessage] = useState("");
    const [participants, setParticipants] = useState([]);
    const [popQuizMessage, setPopQuizMessage] = useState("");
    const [popQuizTimeLeft, setPopQuizTimeLeft] = useState(null);
    const [popQuizActive, setPopQuizActive] = useState(false);
    const [timeToSolveQuiz, setTimeToSolveQuiz] = useState(null); // 퀴즈 풀이 남은 시간
    const [isAnswer, setisAnswer] = useState(0);
    const [correctAnswerUser, setCorrectAnswerUser] = useState(null); // 정답 유저

    const socket = useRef(null);
    const chatContainerRef = useRef(null);
    const wsUrl = "ws://localhost:8000/ws/chat/global_room/"; // 고정된 room_name
    // const wsUrl = "wss://api.letsreadriddle.com/ws/chat/global_room/";

    useEffect(() => {
        document.title = "ReadRiddle - MultiChat";
        }, []);

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
                socket.current.send(JSON.stringify({ type: "join", myusername }));
            }
            setPopQuizActive(false); // POP QUIZ 비활성화
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
                setCorrectAnswerUser(data.username);
            }
            // else if (data.type === "quiz_active_check") {
            //     setPopQuizActive(data.quiz_status);  // 서버에서 받은 pop_quiz_active 값을 상태로 설정
            // }
            else if (data.type === "quiz_broadcast") {
                setMessages((prevMessages) => [...prevMessages, data]);
            }
            else if (data.type === "quiz_intro") {
                setMessages((prevMessages) => [...prevMessages, data]);
            }
            else if (data.type === "quiz_update") {
                const quiz_answer = data.quiz_answer;
                socket.current.send(JSON.stringify({ type: "update_answer", quiz_answer }));
            }
            else if (data.type === "assign_owner") {
                const newOwner = data.new_owner;
                console.log(`새로운 방장: ${newOwner}`);
                if (newOwner === myusername) {
                    socket.current.send(JSON.stringify({ type: "change_owner", myusername }));
                }
            }
        };

        socket.current.onclose = () => {
            console.log("WebSocket connection closed");
        };

        // beforeunload 이벤트를 추가하여 페이지를 떠날 때 leave 메시지 전송
        const handleBeforeUnload = () => {
            if (socket.current && socket.current.readyState === WebSocket.OPEN) {
                socket.current.send(JSON.stringify({ type: "leave", myusername }));
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
    }, [myusername, location]);

    const updatePopQuizStatus = () => {
        if (isAnswer === 0 && popQuizActive) return; // POP QUIZ 활성화 중에는 타이머 업데이트 중단
        
        const now = new Date();
        const minutes = now.getMinutes();
        let nextQuizMinutes = Math.ceil((minutes + 0.1) / 3) * 3; // 5의 배수를 정확히 넘기기 위해 0.1 추가
        if (nextQuizMinutes === 60) { // 60분인 경우는 시간을 넘기고 분은 0으로 초기화
            now.setHours(now.getHours() + 1);
            nextQuizMinutes = 0;
        }
        const nextQuizTime = new Date(now.getTime());
        nextQuizTime.setMinutes(nextQuizMinutes);
        nextQuizTime.setSeconds(0);
        const timeToNextQuiz = Math.max(0, nextQuizTime - now);
        setPopQuizTimeLeft(timeToNextQuiz / 1000);

        console.log("메인 도메인")
        console.log("timeToNextQuiz : " + timeToNextQuiz)
        console.log("popQuizTimeLeft : " + popQuizTimeLeft)
        console.log("popQuizActive : " + popQuizActive)
        console.log("isAnswer : " + isAnswer)

        if ( timeToNextQuiz === 20000 && !popQuizActive) {
            if (socket.current && socket.current.readyState === WebSocket.OPEN) {
                console.log("퀴즈 생성요청 type : create_quiz")
                socket.current.send(
                    JSON.stringify({
                        type: "create_quiz", active: true, // 새로운 QUIZ 생성
                    })
                );
            }
        }

        if (timeToNextQuiz <= 1000 && !popQuizActive) { // POP QUIZ 활성화 조건
            setPopQuizMessage("POP QUIZ!");
            setPopQuizTimeLeft(null);
            console.log("퀴즈 생성")
            console.log("isAnswer : " + isAnswer)
            setTimeToSolveQuiz(120);
            // 서버에 POP QUIZ 활성화 알림 전송
            if (socket.current && socket.current.readyState === WebSocket.OPEN) {
                socket.current.send(
                    JSON.stringify({
                        type: "pop_quiz_active", // 새로운 메시지 타입
                        active: true, // POP QUIZ 활성화 상태
                    })
                );
                setPopQuizActive(true);
            }
        }
        else
        {
            setPopQuizMessage(" 다음 POP QUIZ까지");
            setPopQuizActive(false);
        }

        if (isAnswer === 1) {
            setisAnswer(0); // 정답 입력 상태 초기화
            setTimeToSolveQuiz(0);
            console.log("정답 입력1")
            console.log("timeToNextQuiz : " + timeToNextQuiz)
            // 서버에 POP QUIZ 비활성화 알림 전송
            if (socket.current && socket.current.readyState === WebSocket.OPEN) {
                socket.current.send(
                    JSON.stringify({
                        type: "pop_quiz_active",
                        active: false,
                    })
                );
                setPopQuizActive(false);
            }
        }
    };

    // POP QUIZ 타이머 관리
    useEffect(() => {
        updatePopQuizStatus(); // 초기 실행
        const interval = setInterval(updatePopQuizStatus, 1000); // 1초 간격으로 상태 업데이트
    
        return () => clearInterval(interval); // 컴포넌트 언마운트 시 정리
    }, [popQuizActive, isAnswer, timeToSolveQuiz, correctAnswerUser]); // popQuizTimeLeft 필요시 추가
    
    // 제한시간 관리
    useEffect(() => {
        if (!popQuizActive || timeToSolveQuiz === null || timeToSolveQuiz <= 0) return;

        const interval = setInterval(() => {
            setTimeToSolveQuiz((prev) => {
                if (prev > 0) {
                    console.log("퀴즈시간 감소")
                    console.log("timeToSolveQuiz : " + timeToSolveQuiz)
                    if (prev === 1) {
                        console.log("제한시간 종료")
                        console.log("timeToSolveQuiz : " + timeToSolveQuiz)
                        setPopQuizActive(false);
                        // 서버에 POP QUIZ 비활성화 알림 전송
                        if (socket.current && socket.current.readyState === WebSocket.OPEN) {
                            socket.current.send(
                                JSON.stringify({
                                    type: "pop_quiz_active",
                                    active: false,
                                })
                            );
                        }
                        updatePopQuizStatus();
                    }
                    return prev - 1; // 매 초마다 1초 감소
                }
            });
        }, 1000);
        
        return () => clearInterval(interval); // 컴포넌트 언마운트 시 정리
    }, [popQuizActive, timeToSolveQuiz]);

    const formatTime = (seconds) => {
        const mins = Math.floor(seconds / 60);
        const secs = seconds % 60;
        return `${String(mins).padStart(2, "0")}분 ${String(secs).padStart(2, "0")}초`;
    };

    useEffect(() => {
        if (chatContainerRef.current) {
            const container = chatContainerRef.current;
            const distanceFromBottom = container.scrollHeight - container.scrollTop - container.clientHeight;
            const isAtBottom = distanceFromBottom <= 150;

            if (isAtBottom) {
                container.scrollTop = container.scrollHeight;
            }
        }
    }, [messages]);


    const sendMessage = () => {
        if (socket.current && socket.current.readyState === WebSocket.OPEN) {
            const timestamp = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', hour12: false });
            socket.current.send(
                JSON.stringify({ type: "user_message", message, myusername, timestamp })
            );
            setMessage("");
        } else {
            console.log("WebSocket is not connected yet.");
        }
    };

    return (
            <div className="chat-container">
                <div className="pop-quiz-display">
                    {popQuizMessage === "POP QUIZ!" ? (
                    <div>
                        {/* <h1 className="header">{popQuizMessage}
                        <img className="image2" alt="read" src={puzzlebook} style={{marginBottom: '0%', width: '7%', display:'inline-block'}} />
                        </h1> */}
                        <img className="image5" alt="" src={popquiz_width} style={{marginBottom: '-1%', width: '10%', height: '10%'}} />
                        <p>남은 시간 : {timeToSolveQuiz !== null ? formatTime(timeToSolveQuiz) : "시간 종료"} </p>
                    </div>
                    ) : (
                    <div>
                        <h2>
                        <img className="image5" alt="" src={popquiz_width} style={{marginBottom: '-1%', width: '10%', height: '10%'}} />
                        {popQuizMessage}{" "}
                        <strong>{popQuizTimeLeft !== null ? formatTime(popQuizTimeLeft - 1) : "0분 0초"}</strong> 남았습니다.
                        </h2>
                    </div>
                    )}
                </div>
                <div className="chat-room">
                <div className="chat-box" ref={chatContainerRef}>
                    {messages.map((msg, index) => (
                        <div
                            key={index}
                            className={`chat-message ${
                                msg.username === myusername ? "chat-own" : "chat-other"
                            }`}
                        >
                            <p>
                                {msg.username === myusername ? (
                                    <>
                                        {/* msg.timestamp은 메시지 왼쪽에 표시 */}
                                        <small style={{ marginRight: '10px', fontSize: '0.8em', color: 'white', display: 'inline-block' }}>{msg.timestamp}</small>
                                        <div
                                            className={`chatting-message own-message`}
                                            style={{ display: 'inline-block', whiteSpace: 'pre-wrap'}}
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
                                            style={{ display: 'inline-block', whiteSpace: 'pre-wrap'}}
                                        >
                                            {msg.username === "ReadRiddle" ? (
                                            <ReactMarkdown
                                                components={{
                                                    code: ({ node, inline, children, ...props }) => (
                                                    <pre
                                                        style={{
                                                        fontSize: "0.65em",
                                                        backgroundColor: "black",
                                                        color: "white",
                                                        padding: "10px",
                                                        margin: 0,
                                                        whiteSpace: "pre-wrap",
                                                        wordBreak: "break-word",
                                                        overflowX: "auto",
                                                        }}
                                                        {...props}
                                                    >
                                                        {children}
                                                    </pre>
                                                    ),
                                                }}
                                            >{msg.message}</ReactMarkdown>
                                            ) : <span>{msg.message}</span>}
                                        </div>
                                        <small style={{ marginLeft: '10px', fontSize: '0.8em', color: 'white', display: 'inline-block' }}>{msg.timestamp}</small>
                                    </>
                                )}
                            </p>
                        </div>
                    ))}
                </div>

                    <div className="participants-box">
                        <h2>👤참여자</h2>
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


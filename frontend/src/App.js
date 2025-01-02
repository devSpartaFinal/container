import React, { useState, useEffect } from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "./components/Home";
import About from "./components/About";
import ChatScreen from "./components/ChatScreen";
import SignUp from "./components/Signup";
import Login from "./components/Login";
import UpdateProfile from "./components/UserUpdate";
import Profile from "./components/Profile";
import { Background } from "./styled/ChatHomeStyles";
import Navigation from "./components/Navigation";
import { StyledOuterContainer } from "./styled/HomeStyles";
import { AuthProvider } from "./context/AuthContext";

function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(!!localStorage.getItem("accessToken"));

  useEffect(() => {
    const token = localStorage.getItem("accessToken");
    setIsLoggedIn(!!token);
  }, []); 

  return (
    <>
      <Router>
        <Background />
        <StyledOuterContainer>
          <Navigation isLoggedIn={isLoggedIn} />
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/about" element={<About />} />
            <Route
              path="/chats"
              element={
                <AuthProvider>
                  <ChatScreen />
                </AuthProvider>
              }
            />
            <Route path="/signup" element={<SignUp />} />
            <Route path="/login" element={<Login setIsLoggedIn={setIsLoggedIn} />} /> 
            <Route
              path="/update"
              element={
                <AuthProvider>
                  <UpdateProfile />
                </AuthProvider>
              }
            />
            <Route
              path="/profile"
              element={
                <AuthProvider>
                  <Profile />
                </AuthProvider>
              }
            />
          </Routes>
        </StyledOuterContainer>
      </Router>
    </>
  );
}


export default App;



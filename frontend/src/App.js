import React, { useState, useEffect } from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "./components/Home";
import About from "./components/About";
import ChatScreen from "./components/ChatScreen";
import SetRiddle from "./components/SetRiddle";
import SignUp from "./components/Signup";
import Login from "./components/Login";
import UpdateProfile from "./components/UserUpdate";
import ChangePassword from "./components/ChangePassword";
import Profile from "./components/Profile";
import Riddle from "./components/Riddle";
import { Background } from "./styled/ChatHomeStyles";
import Navigation from "./components/Navigation";
import { StyledOuterContainer } from "./styled/HomeStyles";
import { AuthProvider } from "./context/AuthContext";
import AfterEmail from "./components/AfterEmail";
import Feedback from "./components/Feedback";

function App() {

  const getCookie = (name) => {
        const value = `; ${document.cookie}`;
        const parts = value.split(`; ${name}=`);
        if (parts.length === 2) return parts.pop().split(';').shift();
    };
    const [isLoggedIn, setIsLoggedIn] = useState(null);

    useEffect(() => {
      const token = getCookie("accessToken") || getCookie("access");
      setIsLoggedIn(!!token); 
    }, []);

  return (
    <>
      <Router>
        <Background />
        <StyledOuterContainer>
        
          <Navigation isLoggedIn={isLoggedIn} />
          <Routes>
            <Route path="/after_email" element={<AfterEmail />} />
            <Route path="/" element={<Home />} />
            <Route path="/about" element={<About />} />

            <Route
              path="/home"
              element={
                <AuthProvider>
                  <Home />
                </AuthProvider>
              }
            />
            <Route
              path="/read"
              element={
                <AuthProvider>
                  <ChatScreen />
                </AuthProvider>
              }
            />

            <Route
              path="/riddle"
              element={
                <AuthProvider>
                  <SetRiddle />
                </AuthProvider>
              }
            />
            <Route
              path="/riddle/test"
              element={
                <AuthProvider>
                  <Riddle />
                </AuthProvider>
              }
            />
            <Route
              path="/feedback"
              element={
                <AuthProvider>
                  <Feedback />
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
              path="/change_password"
              element={
                <AuthProvider>
                  <ChangePassword />
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



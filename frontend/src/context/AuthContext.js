import React, { createContext, useContext, useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import apiRequest from "../apiRequest";

const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const navigate = useNavigate();

  useEffect(() => {
    const loadUserData = async () => {
      const userID = localStorage.getItem("username");
      const accessToken = localStorage.getItem("accessToken");

      if (userID && accessToken) {
        try {
          const response = await apiRequest.get(`${userID}`, {
            headers: {
              Authorization: `Bearer ${accessToken}`,
            },
          });
          const userData = response.data;
          setUser({
            username: userData.username,
            nickname: userData.nickname,
            birth_date: userData.birth_date,
            email: userData.email,
            first_name: userData.first_name,
            last_name: userData.last_name,
          });
        } catch (err) {
          console.error("Failed to load user data:", err);
          logout();
        }
      } else {
        logout();
      }
      setLoading(false);
    };

    loadUserData();
  }, []);

  const logout = () => {
    localStorage.removeItem("accessToken");
    localStorage.removeItem("username");
    setUser(null);
    navigate("/login");
  };

  return (
    <AuthContext.Provider value={{ user, loading, logout }}>
    {!loading && children}
  </AuthContext.Provider>
  );
};

export const useAuth = () => useContext(AuthContext);

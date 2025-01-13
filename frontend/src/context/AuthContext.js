import React, { createContext, useContext, useState, useEffect } from "react";
import { useNavigate, useLocation } from "react-router-dom";
import { apiRequest, chatApiRequest, quizApiRequest }  from "../apiRequest";

const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const navigate = useNavigate();
  const location = useLocation(); // 현재 경로 감지

  useEffect(() => {
    const loadUserData = async () => {
      const getCookie = (name) => {
        const value = `; ${document.cookie}`;
        const parts = value.split(`; ${name}=`);
        if (parts.length === 2) return parts.pop().split(';').shift();
    };

    const accessToken = getCookie("accessToken") || getCookie("access");
    // const accessToken = getCookie("accessToken");
    const userID = getCookie("username");
    
    if (accessToken) {
      apiRequest.interceptors.request.use(
        (config) => {
          config.headers['Authorization'] = `Bearer ${accessToken}`;
          return config;
        },
        (error) => Promise.reject(error)
      );

      chatApiRequest.interceptors.request.use(
        (config) => {
          config.headers['Authorization'] = `Bearer ${accessToken}`;
          return config;
        },
        (error) => Promise.reject(error)
      );

      quizApiRequest.interceptors.request.use(
        (config) => {
          config.headers['Authorization'] = `Bearer ${accessToken}`;
          return config;
        },
        (error) => Promise.reject(error)
      );
    }



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
            gender: userData.gender,
            intro: userData.intro,
            last_login: userData.last_login,
            created_at: userData.created_at,
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
  }, [location]);

  const logout = async() => {
    document.cookie = "accessToken=; path=/; max-age=3600;  SameSite=Lax";
    // document.cookie = "access=; path=/; max-age=0; SameSite=Lax";
    document.cookie = "username=; path=/; max-age=3600;  UTC; SameSite=Lax";

    setUser(null);
    if (user?.username) {
          await apiRequest.delete(`${user.username}`);
        }
    navigate("/home");
  };

  return (
    <AuthContext.Provider value={{ user, setUser, loading, logout }}>
    {!loading && children}
  </AuthContext.Provider>
  );
};

export const useAuth = () => useContext(AuthContext);

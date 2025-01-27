import React, { createContext, useContext, useState, useEffect } from "react";
import { useNavigate, useLocation } from "react-router-dom";
import { apiRequest, chatApiRequest, quizApiRequest, popquizApiRequest } from "../apiRequest";

const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const navigate = useNavigate();
  const location = useLocation();

  useEffect(() => {
    const loadUserData = async () => {
      const getCookie = (name) => {
        const value = `; ${document.cookie}`;
        const parts = value.split(`; ${name}=`);
        if (parts.length === 2) return parts.pop().split(";").shift();
      };

      const accessToken = getCookie("accessToken") || getCookie("access");
      const userID = getCookie("username");

      // 로컬 스토리지에 저장
      localStorage.setItem("accessToken", accessToken);
      localStorage.setItem("username", userID);

      // 30분 기준 갱신 로직
      const lastLoggedInAt = JSON.parse(localStorage.getItem("lastLoggedInAt"));
      const now = new Date();
      const fiftyNineMinutesLater = new Date(lastLoggedInAt).getTime() + 30 * 60 * 1000;

      if (now.getTime() >= fiftyNineMinutesLater && lastLoggedInAt) {
        // 30분 이후: Access Token 갱신
        await refreshAccessToken(accessToken);
      } else {
        // 30분 이전: 기존 로직 유지
        if (accessToken) {
          apiRequest.interceptors.request.use(
            (config) => {
              config.headers["Authorization"] = `Bearer ${accessToken}`;
              return config;
            },
            (error) => Promise.reject(error)
          );

          chatApiRequest.interceptors.request.use(
            (config) => {
              config.headers["Authorization"] = `Bearer ${accessToken}`;
              return config;
            },
            (error) => Promise.reject(error)
          );

          quizApiRequest.interceptors.request.use(
            (config) => {
              config.headers["Authorization"] = `Bearer ${accessToken}`;
              return config;
            },
            (error) => Promise.reject(error)
          );

          popquizApiRequest.interceptors.request.use(
            (config) => {
              config.headers["Authorization"] = `Bearer ${accessToken}`;
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
              is_social: userData.is_social,
              riddle_score: userData.RiddleScore,
            });
          } catch (err) {
            console.error("Failed to load user data:", err);
            logout();
          }
        } else {
          logout();
        }
      }

      setLoading(false);
    };

    loadUserData();
  }, [location]);

  const refreshAccessToken = async (oldAccessToken) => {
    try {
      const response = await apiRequest.post("refresh/", {
        access: oldAccessToken,
      });
      const newAccessToken = response.data.access;

      console.log("새로운 Access Token:", newAccessToken);

      // 새 Access Token 저장
      localStorage.setItem("accessToken", newAccessToken);
      document.cookie = `accessToken=${newAccessToken}; path=/; max-age=86400; SameSite=Lax`;
      localStorage.setItem("lastLoggedInAt", JSON.stringify(new Date()));
      
      apiRequest.interceptors.request.use(
        (config) => {
          config.headers["Authorization"] = `Bearer ${newAccessToken}`;
          return config;
        },
        (error) => Promise.reject(error)
      );

      chatApiRequest.interceptors.request.use(
        (config) => {
          config.headers["Authorization"] = `Bearer ${newAccessToken}`;
          return config;
        },
        (error) => Promise.reject(error)
      );

      quizApiRequest.interceptors.request.use(
        (config) => {
          config.headers["Authorization"] = `Bearer ${newAccessToken}`;
          return config;
        },
        (error) => Promise.reject(error)
      );

      popquizApiRequest.interceptors.request.use(
        (config) => {
          config.headers["Authorization"] = `Bearer ${newAccessToken}`;
          return config;
        },
        (error) => Promise.reject(error)
      );
    } catch (err) {
      console.error("Failed to refresh Access Token:", err);
      logout();
    }
  };

  const logout = async () => {
    document.cookie = "accessToken=; path=/; max-age=3600;  SameSite=Lax";
    document.cookie = "username=; path=/; max-age=3600;  UTC; SameSite=Lax";
    document.cookie = "lastLoggedInAt=; path=/; max-age=3600;  UTC; SameSite=Lax";

    localStorage.removeItem("accessToken");
    localStorage.removeItem("username");
    localStorage.removeItem("lastLoggedInAt");

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

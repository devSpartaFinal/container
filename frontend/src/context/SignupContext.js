import React, { createContext, useState, useContext } from 'react';

const SignupContext = createContext();

export const useSignupContext = () => useContext(SignupContext);

export const SignupProvider = ({ children }) => {
    const [formData, setFormData] = useState({
        name: '',
        email: '',
        password: '',
    });

    const updateFormData = (name, value) => {
        setFormData((prev) => ({
            ...prev,
            [name]: value,
        }));
    };

    return (
        <SignupContext.Provider value={{ formData, updateFormData }}>
            {children}
        </SignupContext.Provider>
    );
};

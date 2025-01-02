import { useSignupContext } from '../context/SignupContext';

const useSignup = () => {
    const { formData, updateFormData } = useSignupContext();

    const handleChange = (e) => {
        const { name, value } = e.target;
        updateFormData(name, value);
    };

    const handleSubmit = (e) => {
        e.preventDefault();

        updateFormData('name', '');
        updateFormData('email', '');
        updateFormData('password', '');
    };

    return { formData, handleChange, handleSubmit };
};

export default useSignup;

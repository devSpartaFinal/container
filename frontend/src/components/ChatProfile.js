import styled from "styled-components";

const ChatProfile = styled.div`
    display: flex;
    position: relative;
    height: 100%;

    &::before {
        content: '';
        display: grid;
        place-content: center;
        padding: 0.5em;
        width: 1.3em;
        height: 1.3em;
        border-radius: 50%;
        background: var(--secondry-color-dark-palette) 
            url(${(props) => props.logo}) no-repeat center;
        background-size: cover; /* 이미지를 원형 영역에 맞게 조정 */
    }
`;

export default ChatProfile;

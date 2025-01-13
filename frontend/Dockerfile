# frontend/Dockerfile
FROM node:20-slim

WORKDIR /app/frontend

COPY package.json yarn.lock ./
RUN yarn install

RUN yarn add react-icons

# FontAwesome 관련 패키지 설치
RUN npm install @fortawesome/fontawesome-svg-core \
    @fortawesome/free-solid-svg-icons \
    @fortawesome/react-fontawesome

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]
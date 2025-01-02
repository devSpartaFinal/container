# frontend/Dockerfile
FROM node:20-slim

WORKDIR /app/frontend

COPY package.json yarn.lock ./
RUN yarn install

RUN yarn add react-icons

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]
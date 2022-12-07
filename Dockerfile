FROM node:12.18.1
RUN apt update -y
COPY ./  Nodejs
WORKDIR Nodejs
RUN npm install
RUN npm start main.js
EXPOSE 9000

FROM node:16.17.0 AS build
RUN apt update -y
COPY ./ react-2
WORKDIR react-2
RUN npm install
RUN npm i
RUN npm run build
FROM nginx:latest
RUN apt update -y
WORKDIR react-2
COPY --from=build /react-2/build/*  /usr/share/nginx/html/
RUN service nginx start

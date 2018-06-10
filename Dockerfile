FROM node:carbon
MAINTAINER  brian.playground@gmail.com

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
FROM node:10
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY build ./build

EXPOSE 3000
CMD node build/app.js
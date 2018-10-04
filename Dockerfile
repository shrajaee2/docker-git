FROM node:alpine as generation_stage
WORKDIR /app
COPY package.json ./
RUN npm install
COPY  ./ ./
RUN npm run test -- --coverage
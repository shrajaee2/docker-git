FROM node:alpine as generation_stage
WORKDIR /app
COPY package.json ./
RUN npm install
COPY  ./ ./
EXPOSE 80
RUN npm run test -- --coverage

FROM node:alpine as generation_stage
WORKDIR /app
COPY package.json ./
RUN npm install
COPY  ./ ./
RUN npm build

#Stage 2
FROM nginx AS production
COPY --from=generation_stage /app/build /usr/share/nginx/html/

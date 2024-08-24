FROM node:22.4.0-alpine AS build
EXPOSE 3000
WORKDIR /app
COPY package.json .
COPY package*.json .
RUN npm ci
COPY . .
RUN npm run build
CMD ["node", "dist/main.js"]
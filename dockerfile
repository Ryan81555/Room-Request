FROM node:18

WORKDIR /app

COPY server/package*.json ./
RUN npm install

COPY server/index.js ./

EXPOSE 8080

CMD ["node", "index.js"]
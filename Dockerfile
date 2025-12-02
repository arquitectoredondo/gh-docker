FROM node:18

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS test-cluster.ojs0g08.mongodb.net
ENV MONGODB_USERNAME arquitectomartinredondo
ENV MONGODB_PASSWORD JV6rR5D6wbQR7HG0

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
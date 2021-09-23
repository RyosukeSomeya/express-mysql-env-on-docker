FROM node:12

# アプリのディレクトリ
WORKDIR /app

COPY package*.json ./

# node_module インストール
RUN npm install

# DockerfileのあるディレクトリからWORKDIRへコピー
COPY ./express-app/ .

EXPOSE 3000

CMD [ "npm", "start" ]

FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

ENV EPSAGON_TOKEN=
ENV EPSAGON_APP_NAME=app-in-k8s
ENV NODE_OPTIONS='-r epsagon-frameworks'
ENV EPSAGON_DEBUG=true

CMD ["node", "app.js"]

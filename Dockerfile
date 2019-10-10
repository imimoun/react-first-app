FROM node:8.16.1-stretch

RUN npm install --global npm
RUN npm --version

RUN npm install --global create-react-app

WORKDIR /srv

RUN create-react-app memory

WORKDIR /srv/memory

EXPOSE 3001:3000

CMD npm start

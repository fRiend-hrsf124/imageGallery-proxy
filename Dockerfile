FROM node:10.15-alpine

RUN mkdir -p /src/app

WORKDIR /src/app

COPY . /src/app

RUN apk update && apk add bash

RUN npm install

CMD ["npm", "start"]

EXPOSE 3000
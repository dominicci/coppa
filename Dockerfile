FROM node:carbon-alpine

WORKDIR /usr/src/app

COPY package.json .

COPY yarn.lock .

RUN yarn install

RUN apk add --no-cache --update --repository \
    http://dl-cdn.alpinelinux.org/alpine/v3.8/main/ \
    nodejs=8.14.0-r0

COPY . .

CMD [ "node", "src/cli.js"]

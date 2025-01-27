FROM node:18-alpine AS builder

RUN mkdir -p /server/app
WORKDIR /server/app

COPY package.json  .
COPY yarn.lock .
RUN yarn install

COPY . .

EXPOSE 3000
CMD [ "yarn", "run", "start" ]
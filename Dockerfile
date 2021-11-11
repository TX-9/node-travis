# syntax=docker/dockerfile:1

FROM node:12.18.1

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:%PATH

COPY package*.json /usr/src/app

RUN apt-get install npm -y

COPY . /usr/src/app

EXPOSE 4000
CMD [ "npm", "start"]

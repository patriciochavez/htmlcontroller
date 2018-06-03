FROM node:latest
MAINTAINER patricio_chavez@hotmail.com
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app
EXPOSE 8091
CMD [ "npm", "start" ]
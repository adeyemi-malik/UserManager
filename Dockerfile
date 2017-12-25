FROM mhart/alpine-node:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY pakage.json /usr/src/app

RUN npm install

COPY . /usr/src/app

EXPOSE 3000

CMD [ "npm", "start" ]
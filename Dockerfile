FROM mhart/alpine-node:latest

#create app directory
RUN mkdir -p /usr/src/app

# set work directory
WORKDIR /usr/src/app

# package*.json
COPY pakage*.json /usr/src/app

# install app dependencies
RUN npm install

COPY . /usr/src/app

EXPOSE 3000

CMD [ "npm", "start" ]
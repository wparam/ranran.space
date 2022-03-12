# Dockerfile

# base image
FROM node:16.13.0-slim

#set working directory
WORKDIR /app

# copy source files
COPY . /app

# install dependencies

RUN npm install

# start app
RUN npm run build
EXPOSE 3000
CMD npm run build && npm run start

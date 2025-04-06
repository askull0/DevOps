FROM node:16

WORKDIR /home

RUN git clone https://github.com/askull0/jest-example-app

WORKDIR /home/jest-example-app

RUN yarn install 
RUN yarn run build
RUN yarn global add serve


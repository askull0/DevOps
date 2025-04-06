FROM node:16

WORKDIR /home/lab5_app

RUN git clone https://github.com/Qba02/jest-example-app.git

WORKDIR /home/lab5_app/jest-example-app

RUN yarn install 
RUN yarn run build
RUN yarn global add serve

CMD ["serve", "-s", "build"]

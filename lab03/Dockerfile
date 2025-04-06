FROM node:16.0.0

WORKDIR /home/devops_lab3

RUN git clone https://github.com/DariuszOkonski/react-simple-type-signs-002.git

WORKDIR /home/devops_lab3/react-simple-type-signs-002

RUN npm install && \
    npm run build && \
    npm install -g serve

EXPOSE 3000

CMD ["serve", "-s", "build"]

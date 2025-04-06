FROM ubuntu:latest

RUN apt-get update && apt-get install -y git

ARG GITHUB_TOKEN
ENV GITHUB_TOKEN=$GITHUB_TOKEN

WORKDIR /home/paulina/devops_lab2

RUN git clone https://askull0:${GITHUB_TOKEN}@github.com/InzynieriaOprogramowaniaAGH/MDO2024_S.git

CMD ["/bin/bash"] 

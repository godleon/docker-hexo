FROM ubuntu:xenial

MAINTAINER godleon@gmail.com

WORKDIR /blog
VOLUME /blog
EXPOSE 4000

RUN \
    apt-get update && apt-get install -y curl git-core && \
    mkdir -p /blog && \
    mkdir -p /script

#RUN npm install -g hexo-cli

WORKDIR /
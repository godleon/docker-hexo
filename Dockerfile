FROM node:6.10.3

MAINTAINER godleon@gmail.com

ENV BLOG_ROOT /blog

EXPOSE 4000

RUN \
    apt-get update && apt-get install -y curl git-core && \
    mkdir -p /blog && \
    mkdir -p /script

RUN npm install -g hexo-cli
RUN hexo init ${BLOG_ROOT}

WORKDIR ${BLOG_ROOT}

COPY install_plugins.sh /tmp/
RUN chmod +x /tmp/install_plugins.sh
RUN /tmp/install_plugins.sh


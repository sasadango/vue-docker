FROM node:12.12.0-alpine

WORKDIR /usr/src/app

RUN apk update && \
    npm install -g npm@6.13.7 \
    npm install -g @vue/cli@4.2.2 \
    && rm -rf /var/lib/apt/lists/*

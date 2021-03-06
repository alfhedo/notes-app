FROM ruby:3.0.1-alpine

RUN apk --update add --no-cache --virtual \
  run-dependencies \
  build-base \
  mariadb-dev \
  npm \
  nodejs

RUN npm install -g yarn

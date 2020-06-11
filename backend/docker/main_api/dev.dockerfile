FROM ruby:2.7.1-alpine3.11

WORKDIR /main_api

COPY backend/docker/main_api/.gemrc ~/

RUN set -ox pipefail \
  && apk update \
  && apk add --no-cache \
  bash vim tzdata build-base \
  mariadb-client mariadb-dev \
  && gem install bundler -N \
  && rm -rf /var/cache/apk/*

COPY . .
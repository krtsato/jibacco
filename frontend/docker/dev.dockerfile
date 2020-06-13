FROM node:14.4.0-alpine3.11

COPY frontend/docker/.npmrc frontend/docker/.yarnrc ~/

RUN set -ox pipefail \
  && apk update \
  && apk add --no-cache bash vim \
  && rm -rf /var/cache/apk/*

WORKDIR /frontend

COPY frontend .
FROM nginx:1.19.0-alpine

RUN rm -f /etc/nginx/conf.d/*
COPY proxy/docker/dev.conf /etc/nginx/conf.d/dev.conf

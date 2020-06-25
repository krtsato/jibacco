# FROM swaggerapi/swagger-ui:v3.27.0
# COPY swagger/docker/openapi.yml /usr/share/nginx/html/openapi.yml

FROM node:14.4.0-alpine3.12

WORKDIR /swagger

COPY swagger/docker/openapi.yml /swagger/openapi.yml

RUN npm install swagger-ui-watcher -g

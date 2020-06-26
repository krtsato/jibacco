FROM node:14.4.0-alpine3.12

WORKDIR /swagger

RUN npm install -g swagger-ui-watcher json2yaml

COPY . .
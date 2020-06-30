FROM node:14.4.0-alpine3.12

RUN npm install -g swagger-ui-watcher json2yaml

WORKDIR /swagger

COPY swagger .
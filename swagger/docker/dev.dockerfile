FROM swaggerapi/swagger-ui:v3.27.0

COPY swagger/docker/openapi.yml /usr/share/nginx/html/openapi.yml
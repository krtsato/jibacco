# https://bit.ly/3cVH7rs
# https://bit.ly/3fjlDXj

FROM redis:6.0.5-alpine3.12

COPY backend/cache_db/docker/redis.conf /usr/local/etc/redis/redis.conf

RUN set -ox pipefail \
  && apk update \
  && apk add --no-cache bash vim \
  && rm -rf /var/cache/apk/* \
  && touch /var/log/redis.log \
  && chmod 755 /var/log/redis.log \
  && chown redis:redis /var/log/redis.log \
  && echo "never > /sys/kernel/mm/transparent_hugepage/enabled" >> /etc/rc.local \
  && chmod +x /etc/rc.local

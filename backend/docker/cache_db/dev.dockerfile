# https://bit.ly/3cVH7rs
# https://bit.ly/3fjlDXj

FROM redis:6.0.5-alpine3.12

COPY backend/docker/cache_db/redis.conf /usr/local/etc/redis/redis.conf

RUN set -ox pipefail \
  && touch /var/log/redis.log \
  && chmod 755 /var/log/redis.log \
  && chown redis:redis /var/log/redis.log \
  && echo "never > /sys/kernel/mm/transparent_hugepage/enabled" >> /etc/rc.local \
  && chmod +x /etc/rc.local

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
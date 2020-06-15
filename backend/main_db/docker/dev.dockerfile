FROM mysql:8.0.20

COPY backend/main_db/docker/main_db.cnf /etc/mysql/conf.d/main_db.cnf

RUN set -x \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
    apt-utils bash vim \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
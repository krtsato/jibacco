FROM mysql:8.0.20

COPY backend/docker/main_db/main_db.cnf /etc/mysql/conf.d/main_db.cnf

#!/bin/bash

set -x

# MySQL に変更する
until MYSQL_PASSWORD=$MAIN_DB_PASSWORD psql -h $MAIN_DB_HOST -U $MAIN_DB_USER -c '\q'; do
  >&2 echo "MySQL is unavailable and sleeping now."
  sleep 5
done

>&2 echo "MySQL is up."

# Redis に対する待機を追加する

>&2 echo "Redis is up."
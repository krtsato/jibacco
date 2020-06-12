#!/bin/bash

until mysql -h $MAIN_DB_HOST -u $MAIN_DB_USER -p$MAIN_DB_PASSWORD -e 'quit'; do
  echo >&2 "MySQL is sleeping now."
  sleep 3
done
echo >&2 "MySQL is up."

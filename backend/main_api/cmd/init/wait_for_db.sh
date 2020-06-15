#!/bin/bash

until mysql -h $MAIN_DB_HOST -u $MAIN_DB_USER -p$MAIN_DB_PASSWORD -e 'quit'; do
  echo >&2 'MySQL is sleeping now.'
  sleep 3
done

echo >&2 'MySQL is up.'

mysql -h $MAIN_DB_HOST -u root -p$MAIN_DB_ROOT_PASSWORD -e "GRANT ALL ON *.* TO 'main_db_user'@'%'"

echo 'MAIN_DB_USER get ALL PRIVILEGES.'
#!/usr/local/bin/zsh

set -x

docker-compose -f compose/docker-compose.yml -f compose/docker-compose.dev.yml $@

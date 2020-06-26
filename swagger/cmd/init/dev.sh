#!/usr/local/bin/zsh

compose/dev.sh run --rm swagger sh -c \
  "set -x \
  && swagger-ui-watcher index.yml --bundle=openapi.json \
  && json2yaml openapi.json > openapi.yml \
  && rm openapi.json"
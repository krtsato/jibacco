#!/usr/local/bin/zsh

if [ -d "frontend/node_modules" ]; then
  echo 'Remove frontend/node_modules before this script'
  exit 0
fi

compose/dev.sh run --rm frontend bash -c \
  "set -x \
  && cmd/init/npm_install.sh"
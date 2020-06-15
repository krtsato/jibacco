#!/usr/local/bin/zsh

compose/dev.sh run --rm frontend bash -c \
  "set -x \
  && cmd/init/npm_install.sh"
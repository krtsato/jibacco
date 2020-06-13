#!/usr/local/bin/zsh

set -x

# compose/dev.sh run --rm --no-deps frontend bash -c \
#  "set -x \
#  && cmd/init/npm_install.sh \
#  && npx ts-jest config:init"

compose/dev.sh up -d --build frontend # 検証の後削除する

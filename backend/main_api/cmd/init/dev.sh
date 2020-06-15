#!/usr/local/bin/zsh

if [ -d "backend/main_api/bin" ]; then
  echo 'Remove backend/main_api/bin before rails new command.'
  exit 0
fi

compose/dev.sh run --rm main_api bash -c \
  "set -x \
  && cmd/init/wait_for_db.sh \
  && bundle install -j4 \
  && bundle exec rails new . -d mysql \
    -BCGMST --api --skip --skip-active-storage --skip-gemfile \
    --skip-system-test --skip-turbolinks --skip-webpack-install \
  && bundle exec rails db:create \
  && bundle exec rails g rspec:install --skip \
  && bundle exec rubocop --auto-gen-config"

mkdir -p backend/main_api/tmp/sockets
rm -rf backend/main_api/{public,vendor}
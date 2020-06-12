#!/usr/local/bin/zsh

set -x

compose/dev.sh run --rm web bash -c \
  "set -x \
  && ./backend/main_api/cmd/setup/wait_for_db.sh \
  && bundle install -j4 \
  && bundle exec rails new ./backend/main_api -d mysql \
    -BCGMST --api --skip --skip-active-storage --skip-gemfile \
    --skip-system-test --skip-turbolinks --skip-webpack-install \
  && bundle exec rails db:create \
  && bundle exec rails g rspec:install \
  && bundle exec rubocop --auto-gen-config"

compose/dev.sh up -d

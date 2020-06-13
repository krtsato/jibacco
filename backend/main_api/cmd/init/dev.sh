#!/usr/local/bin/zsh

set -x

compose/dev.sh run --rm main_api bash -c \
  "set -x \
  && cmd/init/wait_for_db.sh \
  && bundle install -j4 \
  && bundle exec rails new . -d mysql \
    -BCGMST --api --skip --skip-active-storage --skip-gemfile \
    --skip-system-test --skip-turbolinks --skip-webpack-install \
  && bundle exec rails db:create \
  && bundle exec rails g rspec:install \
  && bundle exec rubocop --auto-gen-config"

rm -rf backend/main_api/log backend/main_api/lib
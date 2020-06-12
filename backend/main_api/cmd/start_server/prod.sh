#!/bin/bash

set -x

bundle check

rm -f tmp/pids/server.pid

bundle exec puma -C config/puma.rb -e production

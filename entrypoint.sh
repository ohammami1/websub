#!/usr/bin/env bash

RAILS_ENV=production
RACK_ENV=production

bundle install

bundle exec rails s -p 3000 -b '0.0.0.0'

tail -f /dev/null

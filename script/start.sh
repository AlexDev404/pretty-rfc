#!/bin/bash
echo "Bootup"
# bundle install --without production
rake bootstrap
bundle exec rackup
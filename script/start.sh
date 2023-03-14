#!/bin/bash
echo "Bootup"
# bundle install --without production
rake bootstrap
bundle exec rackup -p 8080 -o 0.0.0.0
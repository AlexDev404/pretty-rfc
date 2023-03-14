#!/bin/bash
P=$PORT || P=8080
echo "Bootup"
## bundle install --without production
rake bootstrap
bundle exec rackup -p $P -o 0.0.0.0

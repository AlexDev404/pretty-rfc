#!/bin/bash
P=$PORT || P=8080
echo "Bootup on port $P"
## bundle install --without production
rake bootstrap
rackup -p $P -o 0.0.0.0

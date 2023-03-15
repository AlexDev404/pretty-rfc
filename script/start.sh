#!/bin/bash
P=$PORT || P=8080
echo "Bootup on port $P"
## bundle install --without production
rake bootstrap
rackup --port $P --host 0.0.0.0

#!/bin/sh

# Remove caches
yes | docker system prune

# Stop previous dockers
docker-compose stop
docker-compose down

# Run dockers as daemon
docker-compose up -d --build

# Remove caches
yes | docker system prune
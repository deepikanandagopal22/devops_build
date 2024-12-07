#!/bin/bash


echo "Stopping and removing containers..."
docker-compose down


echo "Removing dangling images..."
docker image prune -f

echo "Cleanup complete."


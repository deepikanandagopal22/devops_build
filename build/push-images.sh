#!/bin/bash

DOCKER_USER="<your-dockerhub-username>"
DEV_TAG="$DOCKER_USER/dev:latest"
PROD_TAG="$DOCKER_USER/prod:latest"

echo "Building and pushing 'dev' image..."
docker build -t static-web-app:dev .
docker tag static-web-app:dev $DEV_TAG
docker push $DEV_TAG

echo "Building and pushing 'prod' image..."
docker build -t static-web-app:prod .
docker tag static-web-app:prod $PROD_TAG
docker push $PROD_TAG

echo "Images pushed successfully!"

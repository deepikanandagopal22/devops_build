#!/bin/bash


echo "Building the static files..."
npm install
npm run build


echo "Building Docker image and starting containers..."
docker-compose up --build -d


echo "Checking running containers..."
docker-compose ps

echo "Application is running on http://localhost:9000"


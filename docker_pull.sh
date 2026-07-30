#!/bin/bash

set -e

DOCKER_USERNAME="mithunvm92"
TAG="${1:-v1.0.0}"

echo "Pulling Docker images..."

docker pull ${DOCKER_USERNAME}/employee-app-frontend:${TAG}
docker pull ${DOCKER_USERNAME}/employee-app-backend:${TAG}
docker pull ${DOCKER_USERNAME}/employee-app-db:${TAG}

echo
echo "All images pulled successfully!"

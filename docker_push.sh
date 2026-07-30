#!/bin/bash

set -e

# ==============================
# Configuration
# ==============================

DOCKER_USERNAME="mithunvm92"
TAG="${1:-latest}"

PROJECT_DIR="$HOME/projects/employee-app"

BACKEND_IMAGE="employee-app-backend"
FRONTEND_IMAGE="employee-app-frontend"
DB_IMAGE="employee-app-db"

cd "$PROJECT_DIR"

echo "======================================="
echo "Building Docker images..."
echo "======================================="

docker-compose build

echo
echo "======================================="
echo "Tagging images..."
echo "======================================="

docker tag ${BACKEND_IMAGE}:latest ${DOCKER_USERNAME}/${BACKEND_IMAGE}:${TAG}
docker tag ${FRONTEND_IMAGE}:latest ${DOCKER_USERNAME}/${FRONTEND_IMAGE}:${TAG}
docker tag ${DB_IMAGE}:latest ${DOCKER_USERNAME}/${DB_IMAGE}:${TAG}

echo
echo "======================================="
echo "Pushing Backend..."
echo "======================================="

docker push ${DOCKER_USERNAME}/${BACKEND_IMAGE}:${TAG}

echo
echo "======================================="
echo "Pushing Frontend..."
echo "======================================="

docker push ${DOCKER_USERNAME}/${FRONTEND_IMAGE}:${TAG}

echo
echo "======================================="
echo "Pushing Database..."
echo "======================================="

docker push ${DOCKER_USERNAME}/${DB_IMAGE}:${TAG}

echo
echo "======================================="
echo "Successfully pushed all Docker images!"
echo "======================================="

echo
echo "Images available at:"
echo "docker.io/${DOCKER_USERNAME}/${BACKEND_IMAGE}:${TAG}"
echo "docker.io/${DOCKER_USERNAME}/${FRONTEND_IMAGE}:${TAG}"
echo "docker.io/${DOCKER_USERNAME}/${DB_IMAGE}:${TAG}"

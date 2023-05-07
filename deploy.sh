#!/bin/bash

# Define variables
IMAGE_NAME="<your-docker-image-name>"
IMAGE_TAG="latest"
CONTAINER_NAME="<your-container-name>"

# Pull the Docker image from Docker Hub
docker pull "$IMAGE_NAME:$IMAGE_TAG"

# Stop and remove the existing container
docker stop "$CONTAINER_NAME" || true && docker rm "$CONTAINER_NAME" || true

# Run the Docker container with port mapping
docker run -d --name "$CONTAINER_NAME" -p 80:80 "$IMAGE_NAME:$IMAGE_TAG"

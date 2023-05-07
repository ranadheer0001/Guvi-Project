#!/bin/bash

# Define variables
IMAGE_NAME="<your-docker-image-name>"
IMAGE_TAG="latest"

# Build the Docker image
docker build -t "$IMAGE_NAME:$IMAGE_TAG" .

# Push the Docker image to Docker Hub
docker push "$IMAGE_NAME:$IMAGE_TAG"

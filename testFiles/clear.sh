#!/bin/bash
# Stop the running container
docker stop docker-app-container
# Remove the stopped container
docker rm docker-app-container

# Remove the Docker image
docker rmi docker-app

echo "Container and image have been removed."
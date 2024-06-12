#!/bin/bash

# Variables for image and container names
IMAGE_NAME="imagename"
CONTAINER_NAME="containername"
PORT=8080

# Build the Docker image
echo "Building the Docker image..."
docker image build -f Dockerfile -t $IMAGE_NAME .

# List Docker images
echo "Listing Docker images..."
docker images | grep $IMAGE_NAME

# Run the Docker container
echo "Running the Docker container..."
docker container run -p $PORT:$PORT --detach --name $CONTAINER_NAME $IMAGE_NAME

# Inform the user to access the application
echo "Access the website via: http://localhost:$PORT"

# List all Docker containers
echo "Listing all Docker containers..."
docker ps -a | grep $CONTAINER_NAME

# Enter the container and list directory contents
echo "Entering the container and listing contents..."
docker exec -it $CONTAINER_NAME /bin/bash -c "ls -l"

# Command to enter the container
echo "To enter the container manually, use:"
echo "docker exec -it $CONTAINER_NAME /bin/bash"

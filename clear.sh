# Variables for image and container names
IMAGE_NAME="imagename"
CONTAINER_NAME="containername"
# Stop the running container
docker stop $CONTAINER_NAME
# Remove container
docker rm $CONTAINER_NAME

# Remove the Docker image
docker rmi $IMAGE_NAME

echo "Container and image have been removed."
#!/bin/bash
docker image build -f Dockerfile -t docker-app .

docker images

docker container run -p 8080 --detach --name docker-app-container docker-app
echo "Please enter this website:http://localhost:8080"

docker ps -a
echo "You are in the container now!"
docker exec -it docker-app-container /bin/bash
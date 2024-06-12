# ASCII Art Web Application Dockerize

## About

This project aims to dockerize the ASCII Art Web application, enabling users to generate ASCII art banners using different styles. The Dockerfile provided in this repository facilitates the containerization process.

## Usage

### Building the Docker Image
To build the Docker image, use the following command:
```bash
docker image build -f Dockerfile -t ascii-art-web .
```

### Running the Docker Container
After building the image, run the Docker container with:
```bash
docker container run -p 8080:8080 --detach --name ascii-art-web-container ascii-art-web
```

Access the application by visiting [http://localhost:8080](http://localhost:8080).

### Additional Commands
- **Listing Docker Images:**
  To list all available Docker images, run:

  ```bash
  docker images
  ```

- **Listing Running Containers:**
  To list all running Docker containers, execute:
  
  ```bash
  docker ps
  ```

- **Entering the Docker Container:**
  If you need to enter the running Docker container, use:
  ```bash
  docker exec -it ascii-art-web-container /bin/bash
  ```

### Cleaning Up
To stop and remove the running container, as well as remove the Docker image, use the provided `clear.sh` script:
```bash
./clear.sh
```

## Project Structure

- **Dockerfile:** Contains instructions to build the Docker image.
- **test.sh:** Script to build the Docker image, run the container, and provide additional information.
- **clear.sh:** Script to stop and remove the running container, as well as remove the Docker image.

## Authors

- [hamonia]
- [salkoohe]
```
This README.md file structure provides an overview of the project, instructions for usage, details on project structure, and information about the authors.
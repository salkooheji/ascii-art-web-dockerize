
## 🧐 About <a name="about"></a>

This project aims to dockerize the Ascii-Art-WEB application, which allows users to generate ASCII art banners using different styles. By following the instructions below, you will learn how to containerize the application using Docker while adhering to good coding practices and Dockerfile best practices.

### Objectives

The objectives for this project are as follows:
- Create at least one Dockerfile.
- Build an image based on the Dockerfile.
- Run a container using the image.

### Usage
`docker image build -f Dockerfile -t docker-app .`

`docker container run -p 8080 --detach --name docker-app-container docker-app`



Additional Docker Commands:

Here are some additional Docker commands that might be useful:

- Check the status of running containers:
`docker ps -a`

- View the list of Docker images:
`docker images`

Accessing the Application

Once the Docker container is running, you can access the ascii-art-web-dockerize application by http://localhost:8080.

## ✍️ Authors <a name="authors"></a>

- [aliabbas0]
- [hnooh]
- [sayyusuf]



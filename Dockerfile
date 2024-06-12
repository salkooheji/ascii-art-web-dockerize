# Use the official Golang image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source code and go.mod/go.sum files into the container
COPY go.mod ./

# Download and install Go dependencies
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the Go application
RUN go build -o main .

# Expose the port the application will run on
EXPOSE 8080

# Set metadata for the container
 LABEL maintainer="Salman Alkooheji <s.alkooheji76@gmail.com>"

# Command to run the executable
CMD ["./main"]

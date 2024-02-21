FROM golang:1.21.6-alpine

# Install necessary dependencies
RUN apk update && apk add git

# Fetch and install the nunu package
RUN go install github.com/go-nunu/nunu@latest

# Set the working directory inside the container
WORKDIR /go/src/app

# Copy the rest of the application source code into the container
COPY . .

# Exposing the container service
EXPOSE 3000

# Starting nunu server
CMD ["nunu","run"]


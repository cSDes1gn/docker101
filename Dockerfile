# our base image
FROM alpine:3.5

# Install python and pip
RUN apk add --update py2-pip

# tell the port number the container should expose
EXPOSE 5000
#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull maxproske/simple-python-flask-app

# Run the Docker image as a container
docker run -d -p 5000:5000 maxproske/simple-python-flask-app

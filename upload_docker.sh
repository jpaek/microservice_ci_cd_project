#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=jaepaek1235/project-ml-microservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag project-ml-microservice $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath

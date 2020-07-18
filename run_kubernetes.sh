#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=jaepaek1235/project-ml-microservice

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run  project-ml-microservice --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get deployments


# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/project-ml-microservice 8000:80

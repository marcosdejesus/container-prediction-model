#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=marcosdejesus/udawebmlmodel

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment webmlmodel-udacity --image=$dockerpath:latest


# Step 3:
# List kubernetes pods
kubectl get pods

# Wait for the pods to be created
sleep 30s

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/webmlmodel-udacity 8000:80

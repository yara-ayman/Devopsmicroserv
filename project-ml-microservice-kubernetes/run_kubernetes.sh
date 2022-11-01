##!/usr/bin/env bash

# This tags and uploads an image to Docker Hub



# Step 1:
# This is your Docker ID/path
# dockerpath=<>

# Step 1:
# This is your Docker ID/path
dockerpath="yara-ayman/micro_project"
# dockerpath=<>

# Step 2
kubectl create deployment micro-app --image=$dockerpath:micro-app --port=80

# Step 3:
kubectl get deployment
kubectl get pods

# Step 4:
kubectl expose deployment micro-app --port=80 --target-port=80
kubectl port-forward deployment/micro-app 8080:80


# Step 2
# Run the Docker Hub container with kubernetes


# Step 3:
# List kubernetes pods

# Step 4:
# Forward the container port to a host


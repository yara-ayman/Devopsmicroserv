#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="yara-ayman/micro_project"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag micro-app:latest $dockerpath:micro-app
cat .my_password.txt | docker login --username yaraayman --password-yara
# Step 3:
# Push image to a docker repository
docker push $dockerpath:micro-app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository

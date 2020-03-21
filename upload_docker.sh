#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=9986946435/ml-api:latest

# Step 2:  
# Authenticate & tag
docker login --username 9986946435 --password dockerhub@123
docker tag ml-api:latest 9986946435/ml-api:version-2
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push 9986946435/ml-api:version-2

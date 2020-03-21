#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# Docker ID/path
dockerpath=9986946435/ml-api:version-1

# Step 2
kubectl run ml-api --image=9986946435/ml-api:version-1 --replicas=1


# Step 3:
kubectl get pods

# Step 4:
kubectl port-forward ml-api-54f688cc5c-95sbv 8000:80

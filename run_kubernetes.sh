#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=ahmadyouniss/my-python-app
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run my-python-app --image=$dockerpath --port=8000

# wait 20 sec for PODs
echo "Please wait for pods availability "
sleep 20s

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward my-python-app 8000:80

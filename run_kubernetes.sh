#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID
dockerpath="tsouzasp/sklearn-ml:v3"

# Step 2
# Run in Docker Hub container with kubernetes
kubectl delete pods sklearn || echo
kubectl run sklearn --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to host
echo "sleeping 10secs"
sleep 10
kubectl get pods
kubectl port-forward sklearn 8000:80
kubectl logs sklearn
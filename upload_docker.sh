#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
version=v3
dockerpath=tsouzasp/sklearn-ml

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath:$version"
docker login
docker tag sklearn-ml $dockerpath:$version

# Step 3:
# Push image to a docker repository
docker push $dockerpath:$version

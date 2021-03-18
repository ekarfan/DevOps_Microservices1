#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
#dockerpath=<your docker ID/path>
dockerpath=awsdev123/kf-predictor
tag=latest

# Step 2:  
# Authenticate & tag
docker login
docker system info | grep Registry
echo "Docker ID and Image: $dockerpath tag: $tag"
docker tag $dockerpath $dockerpath:$tag

# Step 3:
# Push image to a docker repository
docker push $dockerpath:$tag

#!/usr/bin/env bash

# Step 1:
# Build image and add a descriptive tag
docker build --tag=sklearn-ml .

# Step 2:
# List docker images
docker images

# Step 3:
# Run flask app
docker run --rm -it -p 8000:80 sklearn-ml
#docker run -it sklearn-ml bash
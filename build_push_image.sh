#!/bin/bash

# Build dockerfile with name item-app:v1
docker build -t item-app:v1 .

# See list of docker images
docker images

# Tag image name item-app:v1 to namespace/{project name} on local
docker tag item-app:v1 ghcr.io/kucinginsom/item-app:v1

# Login to github packages with username and password already exported before using args PAT_GITHUB_PACKAGES
echo $PAT_GITHUB_PACKAGES | docker login ghcr.io -u kucinginsom --password-stdin

# Push tagged image to github packages
docker push ghcr.io/kucinginsom/item-app:v1
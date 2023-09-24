#!/bin/bash

# Build dockerfile with name karsajobs:latest for backend image
docker build -t karsajobs:latest .

# Tag image name karsajobs:latest to namespace/{project name} on local
docker tag karsajobs:latest ghcr.io/kucinginsom/karsajobs:latest

# Login to github packages with username and password already exported before using args PAT_GITHUB_PACKAGES
echo $PAT_GITHUB_PACKAGES | docker login ghcr.io -u kucinginsom --password-stdin

# Push tagged image to github packages
docker push ghcr.io/kucinginsom/karsajobs:latest
#!/bin/bash

# Build dockerfile with name karsajobs-ui:latest for frontend image
docker build -t karsajobs-ui:latest .

# Tag image name karsajobs-ui:latest to namespace/{project name} on local
docker tag karsajobs-ui:latest ghcr.io/kucinginsom/karsajobs-ui:latest

# Login to github packages with username and password already exported before using args PAT_GITHUB_PACKAGES
echo $PAT_GITHUB_PACKAGES | docker login ghcr.io -u kucinginsom --password-stdin

# Push tagged image to github packages
docker push ghcr.io/kucinginsom/karsajobs-ui:latest
#! /bin/bash

# Author: Paulo S. Barros

#REQUIRES:
#   COMMIT_SHA
#   GITHUB_REPOSITORY

export IMAGE_VERSION=$COMMIT_SHA
export APP_NAME=$GITHUB_REPOSITORY

echo "Deploying"

cat ./k8s/deployment.yaml | envsubst | kubectl apply -f -
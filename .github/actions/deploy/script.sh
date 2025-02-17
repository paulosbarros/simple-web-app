#! /bin/bash

# Author: Paulo S. Barros

#REQUIRES:
#   COMMIT_SHA
#   APP_NAME

export IMAGE_VERSION=$COMMIT_SHA
export APP_NAME=$APP_NAME

echo "Deploying - $APP_NAME:$COMMIT_SHA"

cat ./k8s/deployment.yaml | envsubst | kubectl apply -f -
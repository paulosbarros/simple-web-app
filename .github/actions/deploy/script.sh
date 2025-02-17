#! /bin/bash

# Author: Paulo S. Barros

#REQUIRES:
#   COMMIT_SHA
export COMMIT_SHA=$COMMIT_SHA

echo "Deploying"

cat ./k8s/deployment.yaml | envsubst | kubectl apply -f -
#! /bin/bash

# Author: Paulo S. Barros

#REQUIRES:
#   APP_NAME
#   COMMIT_SHA

echo "Building"
Docker build . -t $APP_NAME:$COMMIT_SHA
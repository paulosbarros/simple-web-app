#! /bin/bash

# Author: Paulo S. Barros

#REQUIRES:
#   SONARQUBE_URL
#   SONARQUBE_TOKEN
#   PROJECT_KEY

# Sonar configuration:
export SONAR_HOST_URL=$SONARQUBE_URL

echo "Getting pysonar-scanner"
pip install pysonar-scanner
export PATH=~/.local/bin:$PATH

echo "Scanning"
pysonar-scanner -Dsonar.token=$SONARQUBE_TOKEN -Dsonar.projectKey=$PROJECT_KEY
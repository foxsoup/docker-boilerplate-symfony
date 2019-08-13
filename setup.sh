#!/bin/bash

# Move dev.Dockerfile and docker-compose.yaml to the project root
mv dev.Dockerfile ../dev.Dockerfile
mv docker-compose.yaml ../docker-compose.yaml

# Remove the git remote
rm -rf .git

# Remove the setup script
rm setup.sh

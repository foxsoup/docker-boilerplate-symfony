#!/bin/bash

# Move the Dockerfile to the project root
mv dev.Dockerfile ../dev.Dockerfile

# Remove the git remote
rm -rf .git

# Remove the setup script
rm setup.sh

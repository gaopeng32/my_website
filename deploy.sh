#!/bin/bash

# Remove the old public folder
rm -rf public

# Build the latest version
hugo

# Auto-commit
git add .
git commit -am "Deploy"
git push

cd public
git add .
git commit -am "Deploy"
git push

cd ..


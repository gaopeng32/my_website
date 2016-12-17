#!/bin/bash

# Remove the old public folder
rm -rf public

# Build the latest version
hugo

# Commit the changes in my_website
git add *
git commit -am "deploy update"
git push

# Clean files in ~/GitHub/gaopeng32.github.io
cd ~/GitHub/gaopeng32.github.io
rm -rf *

# Copy to ~/GitHub/gaopeng32.github.io
cp -rf ~/my_website/public/* ~/GitHub/gaopeng32.github.io
git commit -am "deploy update"
git push



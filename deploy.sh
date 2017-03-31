#!/bin/bash
cd ~/gh-pages
git init
git config --global user.email "aajisaka@apache.org"
git config --global user.name "Akira Ajisaka"
git add -A
git commit -m "Automatic deploy to Github Pages"
git push --quiet --force "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1

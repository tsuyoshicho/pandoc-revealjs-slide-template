#!/bin/bash -eu

# work on doc dir
cd doc

# check and delete specific files
rm -f deploy_key deploy_key.enc deploy.sh .travis.yml package.json

# deploy to gh-pagess
git init
git add .
git commit -m "Publishing site on `date "+%Y-%m-%d %H:%M:%S"`"
git push -f git@github.com:${TRAVIS_REPO_SLUG}.git master:gh-pages

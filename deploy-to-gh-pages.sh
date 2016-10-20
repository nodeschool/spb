#!/bin/bash
set -o errexit

git config --global user.email "spb@nodeschool.io"
git config --global user.name "Almighty Travis CI"

cd public
git init
git add .
git commit -m ":turtle: Cowabunga, dude!"
git remote add origin git@github.com:nodeschool/spb.git
git push --force --quiet origin master:gh-pages > /dev/null 2>&1

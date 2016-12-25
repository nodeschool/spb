#!/bin/bash
set -o errexit

git config --global user.email "spb@nodeschool.io"
git config --global user.name "Almighty Travis CI"

cd public
git init
git add .
git commit -m ":cake: $COMMIT_MESSAGE; $AUTHOR_NAME; $COMMIT_DATE"
git remote add origin git@github.com:nodeschool/spb.git
git push --force --quiet origin master:gh-pages > /dev/null 2>&1

#!/bin/bash
ORIGIN=$(cat .git/config | grep url)
echo "pushing profiles to $ORIGIN"

git add .
git commit -m "automated update"
git push

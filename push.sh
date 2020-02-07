#!/bin/bash
ORIGIN=$(cat .git/config | grep url | awk '{print $3}')
echo "pushing profiles to $ORIGIN"

git add .
git commit -m "automated update"
git push

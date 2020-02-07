#!/bin/bash
ORIGIN=$(cat .git/config | grep url | awk '{print $3}')
read -p $'do you want to push to $ORIGIN?\n\"yes\" || \"no\"\n' option
if [ $option == "yes" ]; then
    echo "pushing profiles to $ORIGIN"
    git add .
    git commit -m "automated update"
    git push
else
    echo "cancelling push to $ORIGIN"
fi

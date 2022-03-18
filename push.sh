#!/bin/bash
ORIGIN=$(cat .git/config | grep url | awk '{print $3}')
echo "do you want to push to $ORIGIN?"
read -p $"\"yes\" || \"no\": " option
if [ $option == "yes" ]; then
    echo "pushing profiles to $ORIGIN"
    git add .
    git commit -m "automated update"
    git push
else
    echo "cancelling push to $ORIGIN"
fi

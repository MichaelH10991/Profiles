#!/bin/bash
read -p $'this will add an alias to your profile, continue?\nyes || no\n' option
read -p $'what profile do you use?\n.zshrc || .bash_profile || .bashrc || other\n' profile
if [ $option == "yes" ]; then
    echo "setting up for $profile"
    echo "alias update=\"cd profiles && bash update.sh && cd ..\"" >> ~/$profile
fi


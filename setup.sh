#!/bin/bash
alias_file=~/.bash_aliases
al=$(cat <<EOF
if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi
EOF
)

check_alias_file () {
    if [ -f $alias_file ]; then
        echo "file exists"
        echo "adding alias loader script to ~/$profile"
        echo $al >> ~/$profile
        return
    else
        echo "creating $alias_file"
        touch $alias_file
        echo "adding \"update\" alias"
        echo "alias update=\"cd profiles && bash update.sh && cd ..\"" >> $alias_file
        echo "adding alias loader script to ~/$profile"
        echo $al >> ~/$profile
        return
    fi
}

read -p $'this will add a line to your profile, continue?\ny || n\n' option
read -p $'what profile do you use?\n.zshrc || .bash_profile || .bashrc || other\n' profile
if [ $option == "y" ]; then
    echo "setting up for ~/$profile"
    echo "setting up .bash_aliases file"
    check_alias_file $profile
    # echo "alias update=\"cd profiles && bash update.sh && cd ..\"" >> ~/.bash_aliases
fi

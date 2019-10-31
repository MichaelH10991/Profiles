#!/bin/bash

echo "getting profiles..."
cp ~/.bash_profile bash_profiles/
cp ~/.vimrc vim_profiles/
cp ~/.gitconfig git_profiles/
cp ~/.ssh/config git_profiles/
echo "done!"
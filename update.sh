#!/bin/bash
route=~/
echo "getting profiles from $route"
echo "copying bash_profile"
cp $route.bash_profile bash_profiles/
echo "copying vimrc"
cp $route.vimrc vim_profiles/
echo "copying gitconfig"
cp $route.gitconfig git_profiles/
echo "copying ssh config"
cp $route.ssh/config git_profiles/
echo "copying zshrc"
cp $route.zshrc zsh_profiles/
echo "done!"

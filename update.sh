#!/bin/bash
route=~
bash_profile=$route/.bash_profile
vimrc=$route/.vimrc
gitconf=$route/.gitconfig
ssh=$route/.ssh/config
zshrc=$route/.zshrc
custom=$route/.oh-my-zsh/custom
echo "getting profiles from $route"
echo "copying bash_profile from $bash_profile"
cp $bash_profile bash_profiles/
echo "copying vimrc from $vimrc"
cp $vimrc vim_profiles/
echo "copying gitconfig from $gitconf"
cp $gitconf git_profiles/
echo "copying ssh config from $ssh"
cp $ssh git_profiles/
echo "copying zshrc from $zshrc"
cp $zshrc zsh_profiles/
echo "copying custom zsh from $custom"
cp -r $custom zsh_profiles/
echo "done!"
bash push.sh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export SCRIPTS="$HOME/scripts"
export APPS="$HOME/Applications"
export ZSH="/Users/michaelh/.oh-my-zsh"
export PATH="$PATH:$APPS:$SCRIPTS"  # puts appllications in path so terraform exe isnt executed from root
export CPATH="$PATH:/$HOME/Development/include"  # loads c dependencies
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export LSCOLORS=GxFxCxDxBxegedabagaced # colours for ls
export CLICOLOR=1
export AWS_DEFAULT_PROFILE="802434700091-its-user"

ZSH_THEME="miketheme"

nvm use v10.16.3

plugins=(git battery)

source $ZSH/oh-my-zsh.sh

if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi

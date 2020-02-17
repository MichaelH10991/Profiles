[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

shopt -s autocd

# alias kl='kill $(ps | awk ''{print $1}'')' 

alias c='code .'
alias cl='clear'
alias parrot='curl parrot.live'
alias sp='lsof -nP -i 4TCP'
alias ls='ls -G'
alias ll='ls -lG'
alias reload='source ~/.bash_profile'

export PATH="$PATH:/$HOME/Applications"
export CPATH="$PATH:/$HOME/Development/include"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\[\e[35m\]\t\[\e[0m\]] \[\033[32m\]Mike\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$'


# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/michaelh/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/michaelh/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/michaelh/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/michaelh/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# comment this out if you want to use anaconda virtualenv
conda deactivate

# <<< conda init <<<

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/michaelh/.nvm/versions/node/v11.13.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/michaelh/.nvm/versions/node/v11.13.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/michaelh/.nvm/versions/node/v11.13.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/michaelh/.nvm/versions/node/v11.13.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/michaelh/.nvm/versions/node/v11.13.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/michaelh/.nvm/versions/node/v11.13.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash

# Rust cargo path - cargo is the package manager for rust.
export PATH="$HOME/.cargo/bin:$PATH"
export LSCOLORS=GxFxCxDxBxegedabagaced
export CLICOLOR=1

nvm use v10.16.3
if [ -f ~/.bash_aliases ]; then . ~/bash_aliases; fi

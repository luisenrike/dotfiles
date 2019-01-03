# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# added by travis gem
[ -f /Users/luis/.travis/travis.sh ] && source /Users/luis/.travis/travis.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# export PS1="\[\e[1;34m\]\w \[\e[1;32m\]\$(__git_ps1 '(%s)')\[\e[0m\]\n\\$: \[$(tput sgr0)\]"
export PS1="\[\e[32m\]\w \[\e[31m\]\$(__git_ps1 '%s')\[\e[0m\]\n\\$: \[$(tput sgr0)\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

export PATH=~/Downloads/flutter/bin:$PATH

alias vim='nvim'
alias rs='rails server'
alias ls='ls -alGFh'

set -o vi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

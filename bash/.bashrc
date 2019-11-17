[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

export BASH_SILENCE_DEPRECATION_WARNING=1

# export PS1="\[\e[1;34m\]\w \[\e[1;32m\]\$(__git_ps1 '(%s)')\[\e[0m\]\n\\$: \[$(tput sgr0)\]"
export PS1="\[\e[32m\]\w \[\e[31m\]\$(__git_ps1 '%s')\[\e[0m\]\n\\$: \[$(tput sgr0)\]"
export EDITOR=emacs

set -o vi

alias e='emacsclient -t'
alias ec='emacsclient -c'
# alias vim='emacsclient -t'
# alias vi='emacsclient -t'
alias ls='ls -alGFh'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

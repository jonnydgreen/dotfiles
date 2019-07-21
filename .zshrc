# Source and init Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Add env.sh
source $HOME/.bash_profile

# Exercism
if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

# Functions
cd_up() {cd $(printf "%0.s../" $(seq 1 $1 )); }

# Aliases
alias gits="git status"
alias ll="ls -hal"
alias lt="ls -halt"
alias w="watch -n"
alias 'cd..'='cd_up';
alias n="npm run"
alias npr="npm run"

# GOLANG
export GO111MODULE="on"

# Emacs key binding
bindkey -e

# PATH
export PATH="$PATH:$HOME/developer/bin/:"
export PATH="/usr/local/opt/python/libexec/bin:${PATH}:"
export PATH=$PATH:/usr/local/share/dotnet
export PATH=$PATH:$GOBIN
export PATH="$HOME/.rbenv/bin:$PATH"

# Nodenv
eval "$(nodenv init -)"

# AWS
export AWS_DEFAULT_REGION=eu-west-2

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/developer/bin/google-cloud-sdk/path.zsh.inc' ]; then source '$HOME/developer/bin/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '$HOME/developer/bin/google-cloud-sdk/completion.zsh.inc' ]; then source '$HOME/developer/bin/google-cloud-sdk/completion.zsh.inc'; fi

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin

# rbenv
eval "$(rbenv init -)"
export RBENV_VERSION=2.5.3

# Now
export NOW_TOKEN_DIR=$HOME/.now

# Clear the terminal
clear

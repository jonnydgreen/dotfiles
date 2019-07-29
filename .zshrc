# Source and init Prezto.
if [[ -s "${HOME}/.zprezto/init.zsh" ]]; then
  source "${HOME}/.zprezto/init.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

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
alias dc="docker-compose"
alias fz="exec zsh -l"
alias y="yarn"
alias g="git"
alias k="kubectl"
alias wpods="watch -n1 kubectl get pods --all-namespaces"
alias npr="npm run"
alias n="npm run"
alias vl="vault-login"
alias dotfiles-update="cd $DOTFILES_DIR && git checkout master && git pull"

# GOLANG
# export GO111MODULE="on"

# Emacs key binding
bindkey -e

# PATH
export PATH="$PATH:$HOME/developer/bin"
export PATH="/usr/local/opt/python/libexec/bin:${PATH}:"
export PATH=$PATH:/usr/local/share/dotnet
export PATH=$PATH:$GOBIN
export PATH="$HOME/.rbenv/bin:$PATH"

# AWS
export AWS_DEFAULT_REGION=eu-west-2
if [[ -s "/usr/local/bin/aws_zsh_completer.sh" ]]; then
  source /usr/local/bin/aws_zsh_completer.sh
fi

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

# Flyway
export PATH=$PATH:$HOME/developer/bin/5.1.4-flyway

# Kubernetes
export KUBE_EDITOR="vim"
source <(kubectl completion zsh)
source <(helm completion zsh)

# Helmenv
export PATH="$HOME/.helmenv/bin:$PATH"

# Vault
if [[ -s "~/developer/bin/vault" ]]; then
  autoload -U +X bashcompinit && bashcompinit
  complete -o nospace -C ~/developer/bin/vault vault
fi

# Android studio SDK
export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Brigade
export PATH=$PATH:$GOPATH/src/github.com/Azure/Brigade/bin

# Golang
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin

# GNU Tar
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# Nodenv
eval "$(nodenv init -)"

# Clear the terminal
clear

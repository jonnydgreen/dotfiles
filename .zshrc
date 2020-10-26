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
if [ -f "$HOME/.bash_profile" ]; then source $HOME/.bash_profile; fi

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
alias n="npm run --"
alias npr="npm run --"
alias dc="docker-compose"
alias fz="exec zsh -l"
alias y="yarn"
alias yw="yarn workspace"
alias yw="yarn workspaces"
alias g="git"
alias gfl="git-flow"
alias k="kubectl"
alias wpods="watch -n1 kubectl get pods --all-namespaces"
alias vl="vault-login"
alias v="vim"
alias rf="rm -rf"
alias dotfiles-update="cd $DOTFILES_DIR && git checkout master && git pull"

# Emacs key binding
bindkey -e

# PATH
export PATH="$PATH:$HOME/developer/bin"
export PATH="/usr/local/opt/python/libexec/bin:${PATH}:"
export PATH=$PATH:/usr/local/share/dotnet
export PATH=$PATH:$GOBIN
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$PATH:$HOME/developer/bin/google-cloud-sdk/bin"

# AWS
if [[ -s "/usr/local/bin/aws_zsh_completer.sh" ]]; then
  source /usr/local/bin/aws_zsh_completer.sh
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/developer/bin/google-cloud-sdk/path.zsh.inc" ]; then source $HOME/developer/bin/google-cloud-sdk/path.zsh.inc; fi
# The next line enables shell command completion for gcloud.
if [ -f "$HOME/developer/bin/google-cloud-sdk/completion.zsh.inc" ]; then source $HOME/developer/bin/google-cloud-sdk/completion.zsh.inc; fi

# add Pulumi to the PATH
if command -v pulumi &> /dev/null; then
  export PATH=$PATH:$HOME/.pulumi/bin
fi

# Rbenv
if command -v rbenv &> /dev/null; then
  eval "$(rbenv init -)"
  export RBENV_VERSION=2.5.3
fi

# Now
if command -v now &> /dev/null; then
  export NOW_TOKEN_DIR=$HOME/.now
fi

# Flyway
if [[ -s "$HOME/developer/bin/5.1.4-flyway" ]]; then
  export PATH=$PATH:$HOME/developer/bin/5.1.4-flyway
fi

# Helmenv
if [[ -s "$HOME/.helmenv/bin/helmenv" ]]; then
  export PATH="$HOME/.helmenv/bin:$PATH"
fi

# Helm
if command -v helm &> /dev/null; then
  source <(helm completion zsh)
fi

# Vault
if command -v vault &> /dev/null; then
  autoload -U +X bashcompinit && bashcompinit
  complete -o nospace -C ~/developer/bin/vault vault
fi

# Android studio SDK
if [[ -s "/usr/local/share/android-sdk" ]]; then
  export ANDROID_HOME=/usr/local/share/android-sdk
  export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
  export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
fi

# Golang
if [[ -s "/usr/local/go/bin" ]]; then
  export PATH=$PATH:/usr/local/go/bin
  export GO111MODULE="on"
fi
if command -v go &> /dev/null; then
  export PATH=$PATH:$GOPATH/bin
fi

# Brigade
if [[ -s "$GOPATH/src/github.com/Azure/Brigade/bin/brigade" ]]; then
  export PATH=$PATH:$GOPATH/src/github.com/Azure/Brigade/bin
fi

# GNU Tar
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# OpenSSL
export PATH="/usr/local/opt/openssl/bin:$PATH"

# Skaffold
if command -v skaffold &> /dev/null; then
  export SKAFFOLD_UPDATE_CHECK=false
fi

# Nodenv
if command -v nodenv &> /dev/null; then
  export PKG_CONFIG_PATH=/usr/local/Cellar/libffi/3.2.1/lib/pkgconfig/
  eval "$(nodenv init -)"
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if command -v nvm &> /dev/null; then
  # Place this after nvm initialization!
  autoload -U add-zsh-hook
  load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
      local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

      if [ "$nvmrc_node_version" = "N/A" ]; then
        nvm install
      elif [ "$nvmrc_node_version" != "$node_version" ]; then
        nvm use
      fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
      echo "Reverting to nvm default version"
      nvm use default
    fi
  }
  add-zsh-hook chpwd load-nvmrc
  load-nvmrc
fi

# Minikube
if command -v minikube &> /dev/null; then
  eval "$(minikube completion zsh)"
fi

# Git Flow
if command -v git-flow &> /dev/null; then
  source $DOTFILES_DIR/git-flow-completion.zsh
fi

# Kubectl
if command -v kubectl &> /dev/null; then
  export KUBE_EDITOR="vim"
  source <(kubectl completion zsh)
fi

# Clear the terminal
clear

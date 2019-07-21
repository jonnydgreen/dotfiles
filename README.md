# dotfiles

Terminal config for sharing dotfiles across devices

## Git

### Setup git

Add the following to your .gitconfig file in your home directory:

```bash
[include]
  path = /path/to/dotfiles/repo/.gitconfig
```

## Zsh

### Setup zsh

Add the following to your .zshrc file in your home directory:

```bash
export DOTFILES_DIR=/path/to/dotfiles/repo
. $DOTFILES_DIR/.zshrc
```

## Prezto

### Prezto Prerequisites

* zsh

### Setup prezto

To load the zprezto config, make sure you set the followinfg env variable in your main .zshrc in yoru home directory before any **BEFORE** any shared zsh/zprezto scripts are invoked:

```bash
export ZDOTDIR=$DOTFILES_DIR # Be sure to leave off the trailing slash
```

## Updating

### Prerequisites

* zsh

To update existing configurations, run:

```bash
dotfiles-update
```

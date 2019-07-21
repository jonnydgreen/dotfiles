# dotfiles

Dotfile config that can be shared across devices

## Installation

Clone this repo somewhere in your filesystem:

```bash
git clone https://github.com/projectjudge/dotfiles.git
```

To install a module, follow the instructions defined below. Note, some have dependencies so take care when installing.

## Modules

1. [Git](#git)
2. [Zsh](#zsh)
3. [Prezto](#prezto)
4. [Updating](#updating)

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

### Prezto prerequisites

* zsh

### Setup prezto

To load the zprezto config, make sure you set the followinfg env variable in your main .zshrc in yoru home directory before any **BEFORE** any shared zsh/zprezto scripts are invoked:

```bash
export ZDOTDIR=$DOTFILES_DIR # Be sure to leave off the trailing slash
```

## Updating

### Updating prerequisites

* zsh

To update existing configurations, run:

```bash
dotfiles-update
```

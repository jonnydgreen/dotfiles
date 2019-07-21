# dotfiles

Terminal config for sharing dotfiles across devices

## Git

Add the following to your .gitconfig file in your home directory:

```bash
[include]
  path = /path/to/dotfiles/repo/.gitconfig
```

## Zsh

Add the following to your .zshrc file in your home directory:

```bash
. /path/to/dotfiles/repo/.zshrc
```

## Prezto

To load the zprezto config, make sure you set the followinfg env variable in your main .zshrc in yoru home directory before any **BEFORE** any shared zsh/zprezto scripts are invoked:

```bash
export ZDOTDIR=/path/to/dotfiles/repo # Be sure to leave off the trailing slash
```

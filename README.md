# Dotfiles

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![GitHub license](https://img.shields.io/github/license/projectjudge/dotfiles.svg)](https://github.com/projectjudge/dotfiles/blob/main/LICENSE)
[![GitHub tag](https://img.shields.io/github/tag/projectjudge/dotfiles.svg)](https://GitHub.com/projectjudge/dotfiles/tags/)
[![GitHub issues](https://img.shields.io/github/issues/projectjudge/dotfiles.svg)](https://GitHub.com/projectjudge/dotfiles/issues/)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://gitHub.com/projectjudge/dotfiles/graphs/commit-activity)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/projectjudge/dotfiles/compare)
[![GitHub stars](https://img.shields.io/github/stars/projectjudge/dotfiles.svg?style=social&label=Star&maxAge=2592000)](https://GitHub.com/projectjudge/dotfiles/stargazers/)

Dotfile config that can be shared across devices

## Table of Contents

1. [Contributing](./Contributing.md)
2. [Installation](#installation)

## Installation

Clone this repo somewhere in your filesystem:

```bash
git clone https://github.com/projectjudge/dotfiles.git
```

To install a module, follow the instructions defined below. Note, some have
dependencies so take care when installing.

### Modules

1. [Git](#git)
2. [Zsh](#zsh)
3. [Prezto](#prezto)
4. [Brew](#brew)
5. [Updating](#updating)

### Git

#### Setup git

Add the following to your .gitconfig file in your home directory:

```bash
[include]
  path = /path/to/dotfiles/repo/.gitconfig
```

### Zsh

#### Setup zsh

Add the following to your .zshrc file in your home directory:

```bash
export DOTFILES_DIR=/path/to/dotfiles/repo
. $DOTFILES_DIR/.zshrc
```

Next, open a new terminal pane to source the new config

### Prezto

#### Prezto prerequisites

- zsh

#### Setup prezto

To load the zprezto config, make sure you set the following env variable in your
main .zshrc in your home directory before any **BEFORE** any shared zsh/zprezto
scripts are invoked:

```bash
export ZDOTDIR=$DOTFILES_DIR # Be sure to leave off the trailing slash
```

Next, open a new terminal pane to source the new config

### Brew

#### Setup brew

Install brew as follows: https://brew.sh/

Then, in your home folder, create the following file called `Brewfile`:

```ruby
instance_eval(File.read("/path/to/dotfiles/repo/Brewfile"))


# Other custom entries can go here
```

Then, install the brew packages:

> IMPORTANT: this will remove any previously installed packages, so please
> ensure every package is covered by running `brew bundle dump` and editing
> `~/Brewfile` as appropriate.

> NOTE: this will prompt you for your sudo password

```bash
bbi # This will be available after opening a new terminal pane when configuring zsh
```

### Updating

#### Updating prerequisites

- zsh

To update existing configurations, run:

```bash
dotfiles-update
```

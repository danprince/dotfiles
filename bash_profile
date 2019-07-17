#!/usr/bin/env bash

export PS1="\w\[$(tput setaf 4)\]$ \[$(tput sgr0)\]"

# use vim for anything that requires quick edits from the shell
export EDITOR=vim

# 24 bit colors
export TERM=xterm-24bit

# adds doom binaries to path
PATH=$PATH:~/.emacs.d/bin

# saner version of ls (brew install coreutils)
alias ls='gls --color=auto --group-directories-first'

# load bash completions (brew install bash-completion)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

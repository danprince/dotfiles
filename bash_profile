#!/usr/bin/env bash

export EDITOR=emacs
export PS1="\w\[$(tput setaf 4)\]$ \[$(tput sgr0)\]"

PATH=$PATH:~/.emacs.d/bin

alias ls='gls --color=auto --group-directories-first'

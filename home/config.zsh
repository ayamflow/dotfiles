#!/usr/bin/env zsh

#PIP CONFIG
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

#TERMINAL COLORS
export CLICOLOR=1
# export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=ExFxCxDxBxegedabagacad

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Z path
. /usr/local/bin/z/z.sh
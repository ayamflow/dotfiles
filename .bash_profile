#PIP CONFIG
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

#TERMINAL COLORS
export CLICOLOR=1
# export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=ExFxCxDxBxegedabagacad

# Hide user name and computer name in terminal
export PS1="\W "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Z path
. /usr/local/bin/z/z.sh

# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{aliases,osx}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell
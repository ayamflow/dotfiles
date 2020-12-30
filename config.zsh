#PIP CONFIG
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

#TERMINAL COLORS
export CLICOLOR=1
# export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=ExFxCxDxBxegedabagacad

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# script files

# Abroad is a per-computer configuration file (if used on different machines)
if [ -f "~/.dotfiles/abroad.zsh" ]; then
    source ~/.dotfiles/abroad.zsh
fi

source ~/.dotfiles/aliases.zsh
source ~/.dotfiles/functions.zsh
source ~/.dotfiles/osx/osx.zsh
source /usr/local/bin/z/z.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
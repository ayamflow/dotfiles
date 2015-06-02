# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ayamflow"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Put brew cask apps in the root Apps dir
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Start custom dotfiles
source ~/.dotfiles/config.zsh
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#!/usr/bin/env zsh

if [[ "$1" == "install" ]]; then
    # Install
    # Check if .zshrc already exists, and if so, rename it
    if [ -f "~/.zshrc" ]; then
       mv ~/.zshrc ~/.zshrc.bak
    fi

    ln -s ~/.dotfiles/ayamflow.zsh-theme ~/.oh-my-zsh/themes/ayamflow.zsh-theme
    ln -s ~/.dotfiles/.zshrc ~/.zshrc

    source ~/.zshrc
    echo "Dotfiles installed."

    elif [[ "$1" == "uninstall" ]]; then
        # Uninstall
        rm ~/.oh-my-zsh/themes/ayamflow.zsh-theme
        rm ~/.zshrc
        # Check if .zshrc.bak exists, and if so, rename it
        if [ -f "~/.zshrc.bak" ]; then
            mv ~/.zshrc.bak ~/.zshrc
        fi
        echo "Dotfiles uninstalled."
else
    echo "[Kickit] No parameter supplied -- try with 'install' or 'uninstall'."
    exit
fi
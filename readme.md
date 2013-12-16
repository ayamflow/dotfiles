Dotfiles
========

Simple dotfiles for my ZSH prompt.

## Installation
It will rename your current .zshrc to .zshrc.bak, just in case.

```
cd ~
git clone https://github.com/ayamflow/dotfiles
mv ~/dotfiles ~/.dotfiles
chmod +x .dotfiles/kickit.sh
cd .dotfiles
./kickit.sh install

```

## Uninstall
It will remove the current .zshrc (supposedly a symlink), and if found, rename your existing .zshrc.bak to .zshrc.

```
./kickit.sh uninstall

```
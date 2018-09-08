#!/usr/bin/env zsh

if [[ "$1" == "install" ]]; then
    # Install
    # Check if .zshrc already exists, and if so, rename it
    if [ -f "~/.zshrc" ]; then
       mv ~/.zshrc ~/.zshrc.bak
    fi

    # install brew, brew cask, trash
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install caskroom/cask/brew-cask
    brew install trash git node wget

    # install quicklook plugins
    brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

    # Install some good stuff
    brew cask install sublime-text alfred slack iterm2 google-chrome firefox skype xtrafinder

    # create subl shortcut for Sublime Text
    ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

    # install oh-my-zsh
    curl -L http://install.ohmyz.sh | sh
    # install oh-my-zsh syntax highlight
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/zsh-syntax-highlighting
    # install z
    git clone https://github.com/rupa/z /usr/local/bin/z/

    ln -s ~/.dotfiles/ayamflow.zsh-theme ~/.oh-my-zsh/themes/ayamflow.zsh-theme
    ln -s ~/.dotfiles/.zshrc ~/.zshrc

    # Install Composer (PHP)
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer.phar

    # setup some git config
    git config --global user.name "Florian Morel"
    git config --global user.email ayamflow@gmail.com
    git config --global push.default current
    git config --global credential.helper osxkeychain
    git config --global color.ui auto
    git config --global mergetool.keepbackup false
    git config --global merge.tool opendiff
    git config --global core.filemode false
    git config --global core.excludesfile ~/.gitignore-global

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
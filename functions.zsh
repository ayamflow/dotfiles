function sublime-sync() {
    subldir="~/Library/Application\ Support/Sublime\ Text\ 2"

    for folder in {"Pristine\ Packages","Installed\ Packages","Packages"}; do
        if [[ -d "$subldir/$folder" ]]; then
            rm "$subldir/$folder"
        fi
        ln -s ~/Dropbox/Sublime\ Text\ 2/$folder $subldir/$folder
    done
}
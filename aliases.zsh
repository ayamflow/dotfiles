# Finder aliases
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias wk="cd ~/Travail"
alias omni="cd ~/Travail/Gobelins/Omnisense"

# Git
alias ga="git add -A"
alias gs="git status"
alias gg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Virtual environments (Python)
alias venv="source ~/.virtualenvs/default/bin/activate;"

# Use hub with git
alias github=hub
# git create -d "my-repo" creates a new github repo

# bitbucket-create my-repo creates a new bitbucket repo
function bitbucket-create() {
    if [[ -z $1 ]]
        then
            echo "You need to supply the repository name."
            return 1
    fi
    echo "Enter host login for Bitbucket:"
    read login
    res=$(curl -ss --user $login https://api.bitbucket.org/1.0/repositories/ --data name=$1)
   if [[ -z $res ]]
    then
        echo "Could not create repository"
        return 1
    else
        echo "Repository $1 create with success."
        return 0
    fi
}
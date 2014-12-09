# Use hub with git
alias github=hub

alias glist="git diff-tree --no-commit-id --name-only -r"

# bitbucket-create user/repo
function bitbucket-create() {
    if [[ -z $1 ]]
        then
            echo "You need to supply the repository name."
            return 1
    fi

    username=$(echo $1 | cut -d'/' -f1)
    repo=$(echo $1 | cut -d'/' -f2)
    res=$(curl -ss --user $username https://api.bitbucket.org/1.0/repositories/ --data name=$repo)
   if [[ -z $res ]]
    then
        echo "Could not create repository"
        return 1
    else
        $(git remote add origin https://$username@bitbucket.org/$username/$repo)
        return 0
    fi
}

# bitbucket-clone user/repo
function bitbucket-clone() {
    username=$(echo $1 | cut -d'/' -f1)
   $(git clone https://$username@bitbucket.org/$1)
}

# github-create user/repo
function github-create() {
    username=$(echo $1 | cut -d'/' -f1)
    repo=$(echo $1 | cut -d'/' -f2)
    res=$(curl -ss -u $username https://api.github.com/user/repos -d '{"name":$repo}')
    if [[ -z $res ]]
        then
            echo "Could not create repository."
            return 1
    else
        $(git remote add origin https://github.com/$username/$repo)
        return 0
    fi
}

# github-clone user/repo
function github-clone() {
    $(git clone https://github.com/$1)
}

# npmpublish major/minor/patch
function npmpublish() {
  git pull --rebase && \
  rm -rf node_modules && \
  npm install && \
  npm test && \

  mversion ${1:=patch} -m -n && \

  npm publish && \

  git push origin master && \
  git push origin master --tags
}
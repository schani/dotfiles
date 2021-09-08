function gco() {
    local BRANCH

    BRANCH=`git branch --sort=-committerdate | cut -c 3- | fzf --preview="git log {}"`
    if [ -n "$BRANCH" ] ; then
        git checkout "$BRANCH"
    fi
}

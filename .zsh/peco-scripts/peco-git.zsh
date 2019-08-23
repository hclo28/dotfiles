function peco-git-vim () {
    local SELECTED_PATH=$(git status --short | grep -v '^\ D' | peco | awk '{print $2}')
    if [ -n "$SELECTED_PATH" ]; then
        echo "vim $SELECTED_PATH"
        echo $SELECTED_PATH | xargs sh -c 'vim "$0" < /dev/tty'
    fi

    zle accept-line
}

function peco-git-less () {
    local SELECTED_PATH=$(git status --short | grep -v '^\ D' | peco | awk '{print $2}')
    if [ -n "$SELECTED_PATH" ]; then
        echo "less $SELECTED_PATH"
        less $SELECTED_PATH
    fi

    zle accept-line
}

zle -N peco-git-vim
zle -N peco-git-less

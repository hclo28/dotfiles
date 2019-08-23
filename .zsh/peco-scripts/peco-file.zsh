function peco-file-vim () {
    local SELECTED_PATH=$(find . -type f -follow | grep -v '.bk' | sort | peco)
    if [ -n "$SELECTED_PATH" ]; then
        echo "vim $SELECTED_PATH"
        echo $SELECTED_PATH | xargs sh -c 'vim "$0" < /dev/tty'
    fi

    zle accept-line
}

function peco-file-less () {
    local SELECTED_PATH=$(find . -type f -follow | grep -v '.bk' | sort | peco)
    if [ -n "$SELECTED_PATH" ]; then
        echo "less $SELECTED_PATH"
        less $SELECTED_PATH
    fi

    zle accept-line
}

function peco-file-cd () {
    local SELECTED_PATH=$(find . -type d -follow | grep -v '.bk' | sort | peco)
    if [ -n "$SELECTED_PATH" ]; then
        echo "cd $SELECTED_PATH"
        cd $SELECTED_PATH
    fi

    zle accept-line
}

zle -N peco-file-vim
zle -N peco-file-less
zle -N peco-file-cd

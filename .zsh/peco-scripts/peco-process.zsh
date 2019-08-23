function peco-ps () {
    local SELECTED_PATH=$(ps aux | peco | awk '{print $2}')
    if [ -n "$SELECTED_PATH" ]; then
        echo "ps u $SELECTED_PATH"
        ps u $SELECTED_PATH
    fi

    zle accept-line
}

function peco-ps-kill () {
    local SELECTED_PATH=$(ps aux | peco | awk '{print $2}')
    if [ -n "$SELECTED_PATH" ]; then
        echo "kill $SELECTED_PATH"
        kill $SELECTED_PATH
    fi

    zle accept-line
}

zle -N peco-ps
zle -N peco-ps-kill

function bk () {
    cp -ir $1 $1.bk
}

function dbk () {
    cp -ir $1 `date +$1.%Y%m%d.bk`
}

zle -N bk
zle -N dbk

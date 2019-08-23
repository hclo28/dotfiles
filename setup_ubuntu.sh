#!/bin/bash

cd `dirname $0`

# install package
./src/server/lib/install_package.sh -o ubuntu

## setting for zsh
#cp ./.zprofile $HOME/.zprofile
#cp ./.zshrc $HOME/.zshrc
#cp -r ./.zsh $HOME/.zsh
#cp -r ./.config $HOME/.zsh
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting
#
## setting for vim
#cp ./.vimrc $HOME/.vimrc
#cp -r ./.vim $HOME/.vim
#git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
#
## setting for tmux
#cp ./.tmux.conf $HOME/.tmux.conf
#
## setting for commands
#cp -r ./bin $HOME/bin
#
#exec $SHELL -l

# #!/bin/bash

cd `dirname $0`
# setting for zsh
## change lonin shell
chsh -s $(which zsh)
## copy config file
cp ../../../.zprofile $HOME/.zprofile
cp ../../../.zshrc $HOME/.zshrc
cp -r ../../../.zsh $HOME/.zsh
cp -r ../../../.config $HOME/.zsh
if [ -f $HOME/.zsh/zsh-syntax-highlighting ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting
fi

# setting for git
read -p "Setup git config?(Y/n): " gyn
case "$gyn" in 
  [yY]*)
    read -p "git config --global user.email: input email: " gm
    git config --global user.email $gm
    read -p "git config --global user.name: input name: " gn
    git config --global user.name $gn
    ;;
  *) echo "skip!!"
esac

# setting for vim
cp ../../../.vimrc $HOME/.vimrc
cp -r ../../../.vim $HOME/.vim
cp -r ../../../.dein.toml $HOME/.dein.toml
mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
if [ -f $HOME/.vim/dein/repos/github.com/Shougo/dein.vim ]; then
  git clone https://github.com/Shougo/dein.vim.git \
    ~/.vim/dein/repos/github.com/Shougo/dein.vim
fi

#git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim

# setting for tmux
cp ../../../.tmux.conf $HOME/.tmux.conf

# setting for commands
cp -r ../../../bin $HOME/bin


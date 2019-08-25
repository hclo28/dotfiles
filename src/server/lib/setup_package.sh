# #!/bin/bash

cd `dirname $0`
# setting for zsh
## change lonin shell
chsh -s $(which zsh)
## copy config file
cp ../../../.zprofile $HOME/.zprofile
cp ../../../.zshrc $HOME/.zshrc
cp -r ../../../.zsh $HOME
cp -r ../../../.config $HOME
if [ -f $HOME/.zsh/zsh-syntax-highlighting ]; then
  echo "clone zsh-syntax-highlighting"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting
fi

# setting for git
read -p "Setup git config?(Y/n): " gyn
case "$gyn" in 
  [yY]*)
    read -p "git config --global user.email: input email(default: hclo28iq@gmail.com): " gm
    if [ ${#gm} -eq 0 ];then gm='hclo28iq@gmail.com';fi
    git config --global user.email $gm
    read -p "git config --global user.name: input name(default: hclo28): " gn
    if [ ${#gn} -eq 0 ];then gn='hclo28';fi
    git config --global user.name $gn
    ;;
  *) echo "skip!!"
esac

# setting for vim
cp ../../../.vimrc $HOME/.vimrc
cp -r ../../../.vim $HOME/
cp ../../../.dein.toml $HOME/.dein.toml
if [ -f $HOME/.vim/dein/repos/github.com/Shougo/dein.vim ]; then
  echo "clone dein.vim"
  mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
  git clone https://github.com/Shougo/dein.vim.git \
    ~/.vim/dein/repos/github.com/Shougo/dein.vim
fi

# setting for tmux
cp ../../../.tmux.conf $HOME/.tmux.conf

# setting for commands
cp -r ../../../bin $HOME


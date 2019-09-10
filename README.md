#dotfiles
========

## ubuntu

version: 18.04

### Useage

```
git clone https://github.com/hclo28/dotfiles.git
cd dotfiles
./setup_xxx.sh
```

#### Test for docker

```
docker pull ubuntu:18.04
docker run -it -d --name ubuntu1804 ubuntu:18.04
docker exec -it ubuntu1804 /bin/bash
apt-get update
apt-get -y install git
apt-get -y install vim
git --version
```
After executing the above, execute Usage.

# note
If you use Vim 7.4, please use dein.vim ver.1.5 instead.
https://github.com/Shougo/dein.vim/releases/tag/1.5

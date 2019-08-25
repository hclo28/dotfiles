#!/bin/bash

cd `dirname $0`

# install package
read -p "Amazon Linux?(Y/n): " al
case "$gyn" in
  [yY]*)
    sudo amazon-linux-extras install -y epel 
    sudo yum install -y util-linux-user
    ;;
  *) sudo yum install -y epel-release ;;
esac
sudo yum-config-manager --enable epel
sudo yum check-update
./src/server/lib/install_package.sh -o linux

# setup
src/server/lib/setup_package.sh

echo "Finish."


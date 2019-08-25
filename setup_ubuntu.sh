#!/bin/bash

cd `dirname $0`

# install package
./src/server/lib/install_package.sh -o ubuntu

# setup
src/server/lib/setup_package.sh

echo "Finish."


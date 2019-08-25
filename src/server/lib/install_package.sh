#1/bin/bash

# install package for server 

function usage() {
cat <<_EOT_
Usage:
  $0 [-a] [-b] [-f filename] arg1 ...

Description:
  Install package for server each os.

Options:
  -o    Os name(Required)
  -h    Help

_EOT_
exit 1
}

cd `dirname $0`

if [ "$OPTIND" = 1 ]; then
  while getopts :o:h OPT
  do
    case $OPT in
      o)
        OPT_O="TRUE" ; OS="$OPTARG" ;;
      h)
        echo "h option. display help"       # for debug
        usage
        ;;
      \?)
        echo "Try to enter the h option." 1>&2
        ;;
    esac
  done
else
  echo "No installed getopts-command." 1>&2
  exit 1
fi

if [ ! "$OPT_O" = "TRUE" ]; then
  echo 'install_package.sh: -o required.'
  exit 1 1>&2
fi

# get install command for os
case "$OS" in
  "ubuntu" ) sudo apt-get -y update;command="apt-get -y install" ;;
  "linux" ) sudo yum -y update;command="yum -y install" ;;
esac

# install package
while read package
do
  if [[ ! $package =~ ^# ]] ; then
    echo "==========install $package=========="
    sudo $command $package
  fi
done < ./package_list


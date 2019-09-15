#!/bin/sh

# confirm hish
which fish > /dev/null
if [ ! $? -eq 0 ] ; then
  echo 'start to install'
  brew install fish;

  chsh $(which fish);
  echo "changed default shell as fish"
  echo "please reopen your terminal"
  exit 0
fi

echo 'already installed'
exit 0

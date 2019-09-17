#!/bin/sh

# confirm hish
which fish > /dev/null
if [ ! $? -eq 0 ] ; then
  echo 'start to install'
  brew install fish;

  FISH =$(which fish)
  chsh $FISH;
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

  echo "changed default shell as fish"
  echo "please reopen your terminal"
  echo "and do this command"
  echo ""
  echo "fisher"
  exit 0
fi

echo 'already installed'
exit 0

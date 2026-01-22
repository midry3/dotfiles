#!/bin/sh

if [ "$1" = "ains" ]; then
  cp ./ains/.bashrc ~/
  echo done.
elif [ "$1" = "tools" ]; then
  cp ./tools/hato.yml ~/
  #cp ./tools/.*  ~/
  echo done.
elif [ "$1" = "wsl" ]; then
  cp ./wsl/.bashrc ~/
  echo done.
fi

#!/bin/zsh

PREZTO_DIR="${ZDOTDIR:-$HOME}/.zprezto"
ROOT_DIR=$(pwd)

export zsh_prezto_setup='() {
  if [ -d $PREZTO_DIR ]; then
    echo "Prezto directory already exists. Pulling changes..."
    cd $PREZTO_DIR
    git pull
    cd $ROOT_DIR
  else
    echo "Cloning Prezto"
    git clone --recursive https://github.com/kjs3/prezto.git $PREZTO_DIR
  fi

  setopt EXTENDED_GLOB
  for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
}'

#!/bin/bash

BASE_DIR=$(cd $(dirname $0); pwd)

#================================
#             zsh
#================================
if which zsh; then
  # oh my zsh のインストール
  wget -q https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
  # .zshrc.custom の追加
  echo 'source ~/.zshrc.custom' >> ~/.zshrc
  # .zshrc.custom のコピー
  ln -s ${BASE_DIR}/.zshrc.custom ~/
else
  echo "Please install zsh"
  exit 1
fi

#================================
#             tmux
#================================
if which tmux; then
  # .zshrcのコピー
  ln -s $BASE_DIR/.tmux.conf ~/
else
  echo "Please install tmux"
  exit 1
fi

#================================
#             vim
#================================
if which vim; then
  # .vimrcのコピー
  ln -s $BASE_DIR/.vimrc ~/
  mkdir -p ~/.vim/bundle
  # neobundleのinstall
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
else
  echo "Please install vim"
  exit 1
fi

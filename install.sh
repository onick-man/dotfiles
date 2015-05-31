#!/bin/bash

#================================
#             zsh
#================================
if which zsh; then
  # oh my zsh のインストール
  wget -q https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
  # .zshrcのコピー
  cp -f .zshrc ~/
  # .zshrc.custom の追加
  echo 'source ~/.zshrc.custom' >> ~/.zshrc
  # .zshrc.custom のコピー
  cp .zshrc.custom ~/
else
  echo "Please install zsh"
  exit 1
fi

#================================
#             tmux
#================================
if which tmux; then
  # .zshrcのコピー
  cp -f .tmux.conf ~/
else
  echo "Please install tmux"
  exit 1
fi

#================================
#             vim
#================================
if which vim; then
  # neobundleのinstall
  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
  # .vimrcのコピー
  cp -f .vimrc ~/
else
  echo "Please install vim"
  exit 1
fi

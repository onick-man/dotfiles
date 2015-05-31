#!/bin/bash


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

if which tmux; then
  # .zshrcのコピー
  cp -f .tmux.conf ~/
else
  echo "Please install tmux"
  exit 1
fi



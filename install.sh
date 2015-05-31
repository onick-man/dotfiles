#!/bin/bash


if which zsh; then
  # oh my zsh のインストール
  wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
  # .zshrc.custom の追加
  echo 'source ~/.zshrc.custom' >> ~/.zshrc
  # .zshrc.custom のコピー
  cp .zshrc.custom ~/
else
  echo "Please install zsh"
fi



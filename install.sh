#!/usr/bin/env bash
current_dir=$(pwd)

backup() {
  mv ~/$1 ~/$1.backup
}

link() {
  dot_filename=.$1

  backup $dot_filename
  ln -s $current_dir/$1 ~/$dot_filename
}

# Config bashrc
link bashrc

# Config Vim
bundle_dir=~/.vim/bundle

sudo apt-get install vim-gnome

[[ -d $bundle ]] || mkdir -p $bundle_dir
git clone https://github.com/gmarik/vundle.git $bundle_dir/vundle

link vimrc

# Config Tmux
sudo apt-get install tmux
link tmux.conf

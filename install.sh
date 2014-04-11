#!/usr/bin/env bash
ROOT_DIR=$(dirname $(readlink -f $0))

backup() {
  timestamp=$(date +'%FT%T%z')
  mv ~/$1 ~/$1.$timestamp.backup
}

link() {
  filename=$1
  dot_filename=.$1
  dest_path=$ROOT_DIR/$filename

  backup $dot_filename
  ln -s $dest_path ~/$dot_filename
}

install_font() {
  fonts_dir=/usr/share/fonts/truetype

  for font_path in $(find $ROOT_DIR/fonts/*)
  do
    font_file=$(basename $font_path)
    sudo ln -s $font_path $fonts_dir/$font_name
  done

  sudo fc-cache -f -v
}

# Install font
install_font

# Config bashrc
link bashrc

# Config Vim
## Install GVim
sudo apt-get install vim-gnome

## Install vundle
bundle_dir=~/.vim/bundle

if [[ ! -d $bundle ]]
then
  mkdir -p $bundle_dir
  git clone https://github.com/gmarik/vundle.git $bundle_dir/vundle
done

## Copy vimrc
link vimrc

# Config Tmux
sudo apt-get install tmux
link tmux.conf

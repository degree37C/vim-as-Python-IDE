#!/bin/bash

top_dir=$pwd)

apt-get remove vim vim-runtime

sudo apt-get install gcc git make python3-dev ctags libncurses5-dev 

wget http://mirror.netinch.com/pub/vim/unix/vim-8.0.tar.bz2


tar -xjf vim-8.0.tar.bz2 && cd vim80

./configure --enable-multibyte  --with-features=huge --enable-python3interp=yes --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu/  --prefix=/usr/local/vim8 &&\
make && make install



ln -sv /usr/local/vim8/bin/vim /usr/bin/


cd ~
mkdir -p .vim/autoload
cd .vim/
git clone https://github.com/junegunn/vim-plug
cp vim-plug/plug.vim autoload/

cd $top_dir
cp vimrc ~/.vim/

echo "Now you can enter vim and run this command to install plugins\ 
:PlugInstall"

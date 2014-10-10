#!/bin/bash

cd ~; mv .vimrc .vimrc.bkp; mv .tmux.conf .tmux.conf.bkp;
echo "  ";
echo "\033[1;34mremoved before configurations. Files renamed to .vimrc.bkp and .tmux.conf.bkp\033[0m";

echo "  ";
echo "\033[1;34mGetting .vimrc file ...\033[0m";
echo " ";
curl https://raw.githubusercontent.com/ottony/dotfiles/master/vimrc > ~/.vimrc;

echo "  ";
echo "\033[1;34mGetting .tmux.conf file ...\033[0m";
echo " ";
curl https://raw.githubusercontent.com/ottony/dotfiles/master/tmux.conf > ~/.tmux.conf;

echo "  ";
echo "\033[1;34mGetting .gitconfig file ...\033[0m";
echo " ";
curl https://raw.githubusercontent.com/ottony/dotfiles/master/gitconfig >> ~/.gitconfig;

echo "  ";
echo "\033[1;36mCloning vundle https://github.com/gmarik/vundle.git into ~/.vim/bundle/vundle ...\033[0m";
echo " ";
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle;

echo "  ";
echo "\033[1;33mInstalling plugins ...\033[0m";
vim +BundleInstall +qall;

echo "  ";
echo "\033[1;32mEverything is up to date ;)\033[0m";

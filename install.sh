cd ~; mv .vimrc .vimrc.b; mv .tmux.conf .tmux.conf.b; 
echo "  ";
echo "\033[1;34mremoved before configurations. Files renamed to .vimrc.b and .tmux.conf.b\033[0m";

echo "  ";
echo "\033[1;34mGet .vimrc file ...\033[0m";
echo " ";
curl https://raw.github.com/ottony/dotfiles/master/.vimrc >> ~/.vimrc;

echo "  ";
echo "\033[1;34mGet .tmux.conf file ...\033[0m";
echo " ";
curl https://raw.github.com/ottony/dotfiles/master/.tmux.conf >> ~/.tmux.conf;

echo "  ";
echo "\033[1;36mCloning vundle https://github.com/gmarik/vundle.git into ~/.vim/bundle/vundle ...\033[0m";
echo " ";
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle;

echo "  ";
echo "\033[1;33mInstalling plugins ...\033[0m";
vim +BundleInstall +qall;

echo "  ";
echo "\033[1;32mEverything is up to date ;)\033[0m";

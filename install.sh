cd ~; mv .vimrc .vimrc.b; mv .tmux.conf .tmux.conf.b; 
echo "removed before configurations. Files renamed to .vimrc.b and .tmux.conf.b";

echo "Get .vimrc file ...";
curl https://raw.github.com/ottony/dotfiles/master/.vimrc >> ~/.vimrc;

echo "Get .tmux.conf file ...";
curl https://raw.github.com/ottony/dotfiles/master/.tmux.conf >> ~/.tmux.conf;

echo "Cloning vundle https://github.com/gmarik/vundle.git into ~/.vim/bundle/vundle ...";
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle;

echo "Installing plugins ...";
vim +BundleInstall +qall;

echo "Everything is up to date ;)";

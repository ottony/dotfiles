cd ~; mv .vimrc .vimrc.b; mv .tmux.conf .tmux.conf.b; echo "removed before configurations. Files renamed to .vimrc.b and .tmux.conf.b";
git clone https://github.com/ottony/dotfiles.git ~/;
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle;
vim +BundleInstall +qall;

## Dotfiles for Vim and Tmux

### Screenshot
![It looks like this!](media/screenshot.png)

### Plugins used
* vundle
* vim-bundler
* vim-rails
* vim-fugitive
* ctrlp-vim
* numbers
* nerdtree
* nerdcommenter
* emmet-vim
* vim-snipmate
* supertab

### Install

```
curl https://raw.github.com/ottony/dotfiles/master/install.sh | sh
```
### Git Alias
  * git lg
  ````
  git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
  ````
  * git dif
  ````
  git diff --color
  ````
  * git s
  ````
  git status
  ````
  * git rf
  ````
  git rebase FETCH_HEAD
  ````
  * git fo
  ````
  git fetch origin
  ````

#### Example
  ````
  git fo master
  ````

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" original repos on GitHub
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-bundler.git'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'kien/ctrlp.vim.git'
Bundle 'myusuf3/numbers.vim'
Bundle 'ervandew/supertab'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'


filetype plugin indent on     " required!

" keys
:nnoremap <Leader>p :NERDTree<cr>

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" original repos on GitHub
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-bundler.git'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-endwise.git'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'kien/ctrlp.vim.git'
Bundle 'myusuf3/numbers.vim'
Bundle 'ervandew/supertab'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

" non-GitHub repos
" Bundle 'git://git.wincent.com/command-t.git'
Bundle 'wincent/Command-T'

" Tabular
Bundle 'godlygeek/tabular'

" Snipmate snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" Airline!
Bundle 'bling/vim-airline'

filetype plugin indent on     " required!

" keys
:nnoremap <Leader>p :NERDTreeToggle<cr>
:nnoremap <Leader>n :NERDTreeToggle<cr>
:nnoremap <Leader>t :Tab /:\zs<cr>

:set list!
:set listchars=tab:>-,trail:.
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set expandtab
:set noswapfile

" Settings to numbers
:set number
:au FocusGained * :set relativenumber

map <C-c> "+yy
map <C-v> "+p
map <C-x> "+dd

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" original repos on GitHub
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'tpope/vim-bundler.git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-endwise.git'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'othree/yajs.vim'
" NeoBundle 'kien/ctrlp.vim'
NeoBundle 'janko-m/vim-test'
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'w0rp/ale'
"NeoBundle 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" NeoBundle 'Valloric/YouCompleteMe', { 'build' : {'mac': './install.sh --clang-completer --system-libclang --omnisharp-completer' } }
NeoBundle 'jreybert/vimagit'
NeoBundle 'ntpeters/vim-better-whitespace'

" Go Lang
NeoBundle 'fatih/vim-go'

" Elixir
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'slashmili/alchemist.vim'

" Javascript
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'

" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'

" non-GitHub repos
" NeoBundle 'git://git.wincent.com/command-t.git'
NeoBundle 'wincent/Command-T'

" Tabular
NeoBundle 'godlygeek/tabular'

" Snipmate snippets
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'

" Airline!
NeoBundle 'bling/vim-airline'
NeoBundle 'chriskempson/tomorrow-theme', { 'rtp': 'vim/' }
NeoBundle 'vim-airline/vim-airline-themes'

call neobundle#end()

filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

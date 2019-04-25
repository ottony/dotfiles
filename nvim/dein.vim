
let dein_readme=expand('~/.cache/dein/repos/github.com/Shougo/dein.vim/README.md')

if !filereadable(dein_readme)
  echo "Installing Dein..."
  echo ""
  silent !curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.cache/dein_installer.sh
  silent !sh ~/.cache/dein_installer.sh ~/.cache/dein
endif

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim')

    " original repos on GitHub
    call dein#add('tpope/vim-rails.git')
    call dein#add('tpope/vim-fugitive')
    call dein#add('tpope/vim-endwise.git') " ruby end
    call dein#add('Lokaltog/vim-easymotion')
    call dein#add('haya14busa/incsearch.vim')
    call dein#add('haya14busa/incsearch-fuzzy.vim')
    call dein#add('haya14busa/incsearch-easymotion.vim')
    call dein#add('rstacruz/sparkup', {'rtp': 'vim/'})
    call dein#add('myusuf3/numbers.vim')
    call dein#add('ervandew/supertab')
    call dein#add('mattn/emmet-vim')
    call dein#add('scrooloose/nerdtree')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('othree/yajs.vim')
    call dein#add('janko-m/vim-test')
    call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
    call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
    " call dein#add('Valloric/YouCompleteMe', { 'build' : {'mac': './install.sh --clang-completer --system-libclang --omnisharp-completer' } })

    " Go Lang
    call dein#add('fatih/vim-go')

    " Elixir
    call dein#add('elixir-lang/vim-elixir')
    call dein#add('slashmili/alchemist.vim')

    " Javascript
    "call dein#add('w0rp/ale')
    call dein#add('pangloss/vim-javascript')
    call dein#add('mxw/vim-jsx')

    " vim-scripts repos
    call dein#add('vim-scripts/L9')
    call dein#add('vim-scripts/FuzzyFinder')

    " non-GitHub repos
    " call dein#add('git://git.wincent.com/command-t.git')
    call dein#add('wincent/Command-T')

    " Tabular
    call dein#add('godlygeek/tabular')

    " Snipmate snippets
    call dein#add('MarcWeber/vim-addon-mw-utils')
    call dein#add('tomtom/tlib_vim')
    call dein#add('garbas/vim-snipmate')
    call dein#add('honza/vim-snippets')

    " Airline!
    call dein#add('bling/vim-airline')
    call dein#add('chriskempson/tomorrow-theme', { 'rtp': 'vim/' })
    call dein#add('vim-airline/vim-airline-themes')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

let $CACHE = expand('~/.cache')
if !isdirectory($CACHE)
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dein_dir = fnamemodify('dein.vim', ':p')
  if !isdirectory(s:dein_dir)
    let s:dein_dir = $CACHE .. '/dein/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute 'set runtimepath^=' .. substitute(
        \ fnamemodify(s:dein_dir, ':p') , '[/\\]$', '', '')
endif

" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set dein base path (required)
let s:dein_base = '~/.cache/dein/'

" Set dein source path (required)
let s:dein_src = '~/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set dein runtime path (required)
execute 'set runtimepath+=' .. s:dein_src

" Call dein initialization (required)
call dein#begin(s:dein_base)

  call dein#add(s:dein_src)

  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/nerdcommenter')

  call dein#add('tpope/vim-rails.git')
  call dein#add('tpope/vim-fugitive') " git commands
  call dein#add('tpope/vim-endwise.git') " ruby end
  call dein#add('airblade/vim-gitgutter') " git signs
  call dein#add('github/copilot.vim') " git signs

  call dein#add('myusuf3/numbers.vim') " relative numbers
  call dein#add('janko-m/vim-test')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 }) " fuzzy search
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

  "call dein#add('neoclide/coc.nvim', { 'rev': 'release' })

  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  "call dein#add('Shougo/deoplete.nvim') " autocomplete
  call dein#add('Lokaltog/vim-easymotion') " motion by letters
  "call dein#add('haya14busa/incsearch.vim')
  "call dein#add('haya14busa/incsearch-fuzzy.vim')
  "call dein#add('haya14busa/incsearch-easymotion.vim')
  call dein#add('ervandew/supertab') " tab
  "call dein#add('Valloric/YouCompleteMe', { 'build' : {'mac': './install.sh --clang-completer --system-libclang --omnisharp-completer' } })

  " HTML
  call dein#add('rstacruz/sparkup', {'rtp': 'vim/'})
  call dein#add('mattn/emmet-vim')
  
  " Graphql
  call dein#add('jparise/vim-graphql')

  " Scala
  " call dein#add('derekwyatt/vim-scala')

  " Go Lang
  call dein#add('fatih/vim-go')
  call dein#add('SirVer/ultisnips')

  " Elixir
  " call dein#add('elixir-lang/vim-elixir')
  " call dein#add('slashmili/alchemist.vim')

  " Javascript
  call dein#add('othree/yajs.vim')
  call dein#add('w0rp/ale')
  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')

  " vim-scripts repos
  call dein#add('vim-scripts/L9')
  call dein#add('vim-scripts/FuzzyFinder')
  call dein#add('jceb/vim-orgmode')

  " non-GitHub repos
  " call dein#add('git://git.wincent.com/command-t.git')
  call dein#add('wincent/Command-T')

  " Tabular
  " call dein#add('godlygeek/tabular')

  " Snipmate snippets
  " call dein#add('MarcWeber/vim-addon-mw-utils')
  " call dein#add('tomtom/tlib_vim')
  " call dein#add('garbas/vim-snipmate')
  " call dein#add('honza/vim-snippets')

  " UI
  call dein#add('bling/vim-airline')
  call dein#add('chriskempson/tomorrow-theme', { 'rtp': 'vim/' })
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('wojciechkepka/vim-github-dark')

  " Org Mode
  " call dein#add('jceb/vim-orgmode')
  
  " Case transformation / Coercion, typos and replace
  call dein#add('tpope/vim-abolish')


" Finish dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

function! DeinLoad()
  if &compatible
    set nocompatible
  endif
  " Add the dein installation directory into runtimepath
  set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

  if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim')
    if !has('nvim')
      call dein#add('roxma/nvim-yarp')
      call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    call dein#end()
    call dein#save_state()
  endif

  filetype plugin indent on
  syntax enable
endfunction

let dein_readme=expand('~/.cache/dein/repos/github.com/Shougo/dein.vim/README.md')

if !filereadable(dein_readme)
  echo "Installing Dein..."
  echo ""
  silent !curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.cache/dein_installer.sh
  silent !sh ~/.cache/dein_installer.sh ~/.cache/dein
  call DeinLoad()
  call dein#install()
endif

call DeinLoad()

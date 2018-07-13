" NeoNeoBundleFetch Scripts-----------------------------
if has('vim_starting')  
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

" ================ Plugins ====================
if filereadable(expand("~/.config/nvim/bundles.vim"))
  source ~/.config/nvim/bundles.vim
endif

" keys
:nnoremap <Leader>p :NERDTreeToggle<cr>
:nnoremap <Leader>n :NERDTreeToggle<cr>
:nnoremap <Leader>n :NERDTreeToggle<cr>

" Test
:nmap <silent> <leader>t :TestNearest<CR> :nmap <silent> <leader>T :TestFile<CR>
:nmap <silent> <leader>a :TestSuite<CR>
:nmap <silent> <leader>l :TestLast<CR>
:nmap <silent> <leader>g :TestVisit<CR>

" Test scrool \[
if has('nvim')
  tmap <leader>[ <C-\><C-n>
end

:set list!
:set listchars=tab:>-,trail:.
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set expandtab
:set noswapfile

" Settings to fzf
:set rtp+=/usr/local/opt/fzf
:nmap <C-p> :Files<CR>

" Settings to numbers
:set number
:au FocusGained * :set relativenumber

:filetype plugin on
:syntax on

autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp
autocmd BufNewFile,BufReadPost *.arb set filetype=ruby
autocmd BufNewFile,BufReadPost *.es6 set filetype=javascript
autocmd BufRead,BufNewFile,BufEnter ~/projects/go_projects/* setlocal ts=2 sts=2 sw=2

let g:auto_save = 0
let g:auto_save_in_insert_mode = 0

" ================ Visual ==================
set background=dark
colorscheme Tomorrow-Night-Eighties

" Highlight current line
set cursorline

set colorcolumn=90

" Eslint
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

"hi ActiveWindow guibg=#17252c ================ Plugins ====================
if filereadable(expand("~/.config/nvim/dein.vim"))
  source ~/.config/nvim/dein.vim
endif

" Set <Leader> key as <Space>
let g:mapleader = " "

" keys
:nnoremap <Leader>n :NERDTreeToggle<cr>
:nnoremap <Leader>o :NERDTreeFind<cr>

" Test
:nmap <silent> <leader>t :TestNearest<CR>
:nmap <silent> <leader>T :TestFile<CR>
" :nmap <silent> <leader>f :TestSuite<CR>
:nmap <silent> <leader>l :TestLast<CR>
:nmap <silent> <leader>g :TestVisit<CR>

" Test scrool \[
if has('nvim')
  tmap <leader>[ <C-\><C-n>
  tmap <leader><Esc> <C-\><C-n>
end

" <Leader>f{char} to move to {char}
:map  <Leader>f <Plug>(easymotion-bd-f)
:nmap <Leader>f <Plug>(easymotion-overwin-f)

" Easy motion

:map z/ <Plug>(incsearch-fuzzy-/)
:map z? <Plug>(incsearch-fuzzy-?)
:map zg/ <Plug>(incsearch-fuzzy-stay)

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

:noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

" Quick jumping between splits
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

:set list!
":set listchars=tab:>-,trail:.
:set listchars=tab:\│\ ,trail:.,extends:>,precedes:<,nbsp:+
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set expandtab
:set noswapfile
:set mouse= " disable mouse
"vmap <LeftRelease> "*ygv

" Clear Search
:nmap <C-l> :noh<CR>

" Settings to fzf
:set rtp+=/home/ottony/.fzf/bin/fzf
:nmap <C-p> :Files<CR>
:nmap <C-f> :Ag<CR>
:nnoremap <Leader>p :GFiles<CR>

" Settings to numbers
:set number
:au FocusGained * :set relativenumber

:filetype plugin on
:syntax on

autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp
autocmd BufNewFile,BufReadPost *.arb set filetype=ruby
autocmd BufNewFile,BufReadPost *.es6 set filetype=javascript
autocmd BufNewFile,BufReadPost *.js.snap set filetype=javascript
autocmd BufRead,BufNewFile,BufEnter ~/projects/go_projects/* setlocal ts=2 sts=2 sw=2

" Vim Go Binding
autocmd FileType go command! A GoAlternate " Test Files

" Go Imports
let g:go_fmt_command = "goimports"

":nmap <C-[> :GoImplements<CR>

" Go Highlight
"let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1

let NERDTreeShowHidden = 1
let NERDTreeQuitOnOpen = 1 " Auto close when open file
autocmd VimEnter * NERDTree " Auto open
autocmd VimEnter * wincmd p " Jump to the previous window, there is the opened file

let g:auto_save = 0
let g:auto_save_in_insert_mode = 0

" ================ Visual ==================
" set background=dark
" colorscheme Tomorrow-Night-Eighties
"colorscheme peachpuff
colorscheme ghdark
" let g:gh_color = "soft"

" Highlight current line
set cursorline

highlight ColorColumn ctermbg=235 guibg=#2c2d27
" set colorcolumn=90
" let &colorcolumn=join(range(81,999),",")
" let &colorcolumn="80,".join(range(120,999),",")
let &colorcolumn="81,121"

" gitgutter sign column
highlight! link SignColumn LineNr

" Eslint
" Warning color
highlight ALEWarning ctermbg=8

" https://github.com/dense-analysis/ale/blob/master/doc/ale-ruby.txt
let g:ale_linters = {
  \ 'ruby'   : ['rubocop']
  \}
let g:ale_fixers = {
  \ 'ruby'     : ['rubocop']
  \}

let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_ruby_rubocop_auto_correct_all = 1
let g:ale_lint_on_save = 1
nnoremap <Leader>lf :ALEFix<cr>

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" White spaces
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

let g:snipMate = { 'snippet_version' : 1 }

" Ignore file names on Ag search fzf
"command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
"

let g:CommandTPreferredImplementation='lua'

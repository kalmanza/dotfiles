"Plugins-------------------- {{{
call plug#begin()
Plug 'git@github.com:tpope/vim-surround.git'
Plug 'tpope/vim-vinegar'
call plug#end()
" }}}

"Global settings-------------------- {{{
set ruler
set ignorecase
set smartcase
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set relativenumber number
set path+=**
set wildmenu
set colorcolumn=80
set autoindent
set smartindent
syntax enable
let mapleader = "\\"
let maplocalleader = ";"
" }}}

"Colors-------------------- {{{
colorscheme slate
highlight colorcolumn ctermbg=blue
highlight MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
highlight Search ctermfg=16 ctermbg=173 cterm=NONE
highlight CurSearch ctermfg=16 ctermbg=lightgrey cterm=NONE
highlight IncSearch ctermfg=16 ctermbg=lightgrey cterm=NONE
" }}}

"Global mappings-------------------- {{{
inoremap jj <esc>
nnoremap <leader>id :put =strftime('%b %d, %Y')<Return>kdd
vnoremap <leader>y "*y
nnoremap <leader>ev :vsplit ~/.dotfiles/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.dotfiles/nvim/init.vim<cr>
" }}}

"Git file settings-------------------- {{{
augroup ft_gitcommit
  autocmd Filetype gitcommit setlocal textwidth=72 
augroup END
" }}}

"Configuration file settings-------------------- {{{
augroup ft_conf
  autocmd Filetype conf setlocal textwidth=0
augroup END
" }}}

"Text file settings-------------------- {{{
augroup ft_text
  autocmd Filetype text setlocal textwidth=80
augroup END
" }}}

"Python file settings -------------------- {{{
augroup ft_python
  autocmd Filetype python nnoremap <buffer> <localleader>c I#<esc>
  "li for lint
  autocmd Filetype python nnoremap <buffer> <localleader>li :w<cr>:!black %<cr><cr>:e<cr>
augroup END
" }}}

"Vimscript file settings ------------------------ {{{
augroup ft_vim
  autocmd!
  autocmd Filetype vim setlocal foldmethod=marker
  autocmd Filetype vim vnoremap <buffer> <localleader>if <esc>'>o<esc>0i" }}}<esc>'<O<esc>0i"-------------------- {{{<esc>T"i
augroup END
" }}}

"Global settings-------------------- {{{
set autoindent
set backspace=indent,eol,start
set complete-=i
set nolangremap
set expandtab
set formatoptions+=j
set history=1000
set ignorecase
set incsearch
set hlsearch
filetype plugin on
filetype indent on
set path+=**
set relativenumber number
set ruler
set shiftwidth=2
set smartcase
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set scrolloff=1
set sidescroll=1
set sidescrolloff=2
set ttimeout
set laststatus=2
set ttimeoutlen=100
set wildmenu
set wildoptions=pum
set wrap
syntax enable
let mapleader = "\\"
let maplocalleader = ";"
let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+'
runtime ftplugin/man.vim
" }}}

"Colors-------------------- {{{
colorscheme slate
highlight colorcolumn ctermbg=blue
highlight MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
highlight Search ctermfg=16 ctermbg=173 cterm=NONE
highlight CurSearch ctermfg=16 ctermbg=lightgrey cterm=NONE
highlight IncSearch ctermfg=16 ctermbg=lightgrey cterm=NONE
" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^Eterm'
  set t_Co=16
endif
" }}}

"Global mappings-------------------- {{{
inoremap jk <esc>
nnoremap <leader>id :put =strftime('%b %d, %Y')<Return>kdd
vnoremap <leader>y "*y
nnoremap <leader>ev :vsplit ~/.dotfiles/vim/.vimrc<cr>
nnoremap <leader>ep :vsplit ~/.dotfiles/vim/.vim/plugin<cr>
nnoremap <leader>sv :source ~/.dotfiles/vim/.vimrc<cr>
nnoremap <c-j> :cnext<cr>
nnoremap <c-k> :cprevious<cr>
nnoremap - :Explore<cr>
nnoremap <c-l> :nohlsearch<cr>
" }}}

"Git file settings-------------------- {{{
augroup ft_gitcommit
  autocmd Filetype gitcommit setlocal textwidth=72 
  autocmd Filetype gitcommit setlocal colorcolumn=72
augroup END
" }}}

"Configuration file settings-------------------- {{{
augroup ft_conf
  autocmd!
  autocmd Filetype conf setlocal textwidth=0
  autocmd Filetype conf setlocal colorcolumn=80
augroup END
" }}}

"Text file settings-------------------- {{{
augroup ft_text
  autocmd!
  autocmd Filetype text setlocal foldmethod=marker
  autocmd Filetype text setlocal foldmarker=¬,·
  autocmd Filetype text vnoremap <buffer> <localleader>if <esc>'>o·<esc>'<O ¬<esc>hi
  autocmd Filetype text setlocal textwidth=80
  autocmd Filetype text setlocal nowrap
  autocmd Filetype text setlocal colorcolumn=80
  autocmd Filetype text nnoremap <buffer> <localleader>id :put =strftime('%b %d, %Y')<Return>kddA ¬<esc>o<esc>0i·<esc>O<tab>
" }}}

"Python file settings -------------------- {{{
augroup ft_python
  autocmd Filetype python nnoremap <buffer> <localleader>c I#<esc>
  "li for lint
  autocmd Filetype python nnoremap <buffer> <localleader>li :<c-u>execute "normal! :w\r:!black %\r:e\r"<cr>
  autocmd Filetype python setlocal colorcolumn=80
augroup END
" }}}

"Vimscript file settings ------------------------ {{{
augroup ft_vim
  autocmd!
  autocmd Filetype vim setlocal foldmethod=marker
  autocmd Filetype vim vnoremap <buffer> <localleader>if <esc>'>o<esc>0i" }}}<esc>'<O<esc>0i"-------------------- {{{<esc>T"i
  autocmd Filetype vim setlocal keywordprg=:help
  autocmd Filetype vim setlocal colorcolumn=80
augroup END
" }}}

"Man file settings-------------------- {{{
augroup ft_man
  autocmd!
  autocmd Filetype man setlocal keywordprg=:Man
  autocmd Filetype man setlocal colorcolumn=""
augroup END
" }}}

"Help file settings-------------------- {{{
augroup ft_help
  autocmd!
  autocmd Filetype help setlocal colorcolumn=""
augroup END
" }}}

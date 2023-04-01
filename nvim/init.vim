call plug#begin()
Plug 'git@github.com:tpope/vim-surround.git'
Plug 'tpope/vim-vinegar'
call plug#end()

colo slate
set ruler
set ignorecase
set smartcase
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set relativenumber nu
set path+=**
set wildmenu
set cc=80
hi colorcolumn ctermbg=Blue
hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
hi Search ctermfg=16 ctermbg=173 cterm=NONE
hi CurSearch ctermfg=16 ctermbg=lightgrey cterm=NONE
hi IncSearch ctermfg=16 ctermbg=lightgrey cterm=NONE
let mapleader = "\\"
let maplocalleader = ";"
inoremap jj <esc>
nnoremap <leader>id :put =strftime('%b %d, %Y')<Return>kdd
vnoremap <leader>y "*y
nnoremap <leader>ev :vsplit ~/.dotfiles/nvim/init.vim<cr>
syntax enable
autocmd Filetype gitcommit set tw=72 
autocmd Filetype conf set tw=0
autocmd Filetype text set tw=80

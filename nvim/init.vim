call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'git@github.com:tpope/vim-surround.git'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-vinegar'
call plug#end()

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
inoremap jj <esc>
inoremap kk <esc>
nmap <leader>id :put =strftime('%b %d, %Y')<Return>
vmap <leader>y :w !pbcopy<Return>
syntax enable
autocmd Filetype gitcommit set tw=72 
autocmd Filetype conf set tw=0
autocmd Filetype text set tw=80

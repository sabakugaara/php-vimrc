runtime bundle/vim-pathogen/autoload/pathogen.vim " 绝对路径有问题, 改为相对路径
filetype plugin indent on
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

let mapleader = ","
set nocompatible
set expandtab
set tabstop=4
set textwidth=80
set number
set showcmd
nmap <leader>es :tabedit ~/.vimrc<CR>
nmap <leader>ss :source ~/.vimrc<CR>
set hlsearch
noremap <CR> o<ESC>

"noremap <BS> X
"在有折行的情况下，需要 gj gk来上下移动
map j gj
map k gk

"插入模式下的鼠标移动
imap <C-h> <LEFT>
imap <C-l> <RIGHT>
imap <C-k> <UP>  
imap <C-j> <DOWN>

" cancel searched highlight
noremap <leader>. :nohlsearch<CR>
map <C-A> ggVG


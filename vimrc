filetype plugin indent on
syntax enable
runtime bundle/vim-pathogen/autoload/pathogen.vim " 绝对路径有问题, 改为相对路径
execute pathogen#infect()
call pathogen#helptags()
"autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab

"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set list

vnorem / y/<c-r>"<cr>
let mapleader = ","
"let g:vim_markdown_folding_disabled=1
set nocompatible
set backspace=indent,eol,start   
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set textwidth=80
set number

set showcmd

set hlsearch
set ignorecase
set smartcase
set fileencoding=utf-8
set fileencodings=utf-8,gbk
set fileformats=unix,dos
set laststatus=2 "显示状态栏
set scrolloff=3  

"在有折行的情况下，需要 gj gk来上下移动
map j gj
map k gk

map <C-A> ggVG
nmap <leader>es :tabedit ~/.vimrc<CR>
nmap <leader>ss :source ~/.vimrc<CR>
noremap <CR> o<ESC>
"插入模式下的鼠标移动，这个设置可能会导致插入模式下无法用<BS>删除 <BS> = <C-H>
"且覆盖了 很多默认快捷键
"imap <C-h> <LEFT>
"imap <C-l> <RIGHT>
"imap <C-k> <UP>  
"imap <C-j> <DOWN>
" cancel searched highlight
noremap <leader>. :nohlsearch<CR>
"noremap <BS> X

"nmap <leader>m :Instantmd <CR>

"colorscheme solarized
" vim < 7.3
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
" vim > 7.3
set colorcolumn=80

set nobackup
set t_Co=256
try 
    colorscheme mustang
    "colorscheme mango
catch
endtry

" Opens an edit command with the path of the currently edited file filled in Normal mode: <Leader>ee
map <Leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>
" F2 = Paste Toggle (in insert mode, pasting indented text behavior changes)
set pastetoggle=<F2>
" ,p = Runs PHP lint checker on current file
map <Leader>p :! php -l %<CR>
" ,P = Runs PHP and executes the current file
map <Leader>P :! php -q %<CR>
" ,v = Paste
"map <Leader>v "+gP
" ,c = Copy
"map <Leader>c "+y

"this work on mac
map <Leader>v :r !pbpaste<CR>
" just copy select line
map <leader>c :w !pbcopy<CR><CR>
set clipboard=unnamed

set nowrap
set fdm=indent "缩进折叠 其他可选设置 marker 默认使用 /*{{{*/和 /*}}}*/标记折叠 expr 表达式等等 
"zM close all flods, zR reopen all flods, za open a flod,  zc close a flod ,when open a flod:  ]z折叠尾部 [z 折叠首部 zr打开
"zj move to next flod ,zk move to previous flod
"@see more: http://vim.wikia.com/wiki/Folding

augroup vimrc
  au BufReadPre * setlocal foldmethod=indent " auto flod when open file
  "au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
set paste

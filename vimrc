execute pathogen#infect()
syntax on
au BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.ts set filetype=typescript
filetype plugin indent on
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
let mapleader = ","
set backspace=indent,eol,start " 删除键能删除空行和 tab 缩进
set expandtab " tab 转化为空格
set tabstop=4 
set shiftwidth=4 " << 和 >> 缩进时的列数
set softtabstop=4 " tab 
set autoindent
set smartindent
set textwidth=180
set number
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gbk
set fileformats=unix,dos
set laststatus=2 "显示状态栏
set scrolloff=3  
set cursorcolumn " 高亮光标所在列
set cursorline " 高亮光标所在行
set wildchar=<Tab> wildmenu wildmode=full
set mouse=a

"使用 / 搜索选中的任意单词
vnorem / y/<c-r>"<cr>   
set iskeyword+=_,$,@,%,#,- " 带有如下符号的单词不要被换行分割
"imap <leader>, <ESC><Right>



"在有折行的情况下，不再需要 gj gk来上下移动
map j gj
map k gk

nmap <leader>es :tabedit ~/.vimrc<CR>
nmap <leader>ss :source ~/.vimrc<CR>
"noremap <CR> o<ESC>
noremap <leader>. :nohlsearch<CR>


set background=dark
"colorscheme solarized
colorscheme mustang
set colorcolumn=80

set nobackup
set t_Co=256

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
" ,j = Runs Node.js and executes the current file
map <Leader>j :! node  %<CR>
map <Leader>rj :Codi javascript<CR>
map <Leader>rp :Codi php<CR>
map <Leader>ag :GrepperAg 
map <Leader>h :%!xxd<CR>
map <Leader>hr :%!xxd -r<CR>


" 复制当前编辑文件路径到系统粘贴板 @see [insert current filename tip](http://vim.wikia.com/wiki/Insert_current_filename)
nmap <Leader>cp :let @+ = expand("%:p")<CR>
" 复制当前编辑文件路径到 vim 粘贴板，通过 y/p 操作
"nmap <Leader>cp :let @" = expand("%:p:h")<CR>

"""""""""""""" brew install vim 7.4 """"""""""""""""""
" ,v = Paste
map <Leader>v "+gP
" ,c = Copy
map <Leader>c "+y

"""""""""""""" brew install vim 7.4 """"""""""""""""""

"""""""""""" mac default vim 7.3"""""""""""""""""""""
" just copy select line brew install vim 7.4 fix this problem
"map <leader>c :w !pbcopy<CR><CR>
"this work on mac
"map <Leader>v :r !pbpaste<CR>

"""""""""""" mac default vim 7.3"""""""""""""""""""""

" mvim just need this
"set clipboard=unnamed

" 删除当前编辑的文件，FxxK 非常容易误操作
"nnoremap rm :call delete(expand('%')) \| bdelete!<CR>

"关闭自动换行
"set wrap 
"set fdm=indent "缩进折叠 其他可选设置 marker 默认使用 /*{{{*/和 /*}}}*/标记折叠 expr 表达式等等 
"zM close all flods, zR reopen all flods, za open a flod,  zc close a flod ,when open a flod:  ]z折叠尾部 [z 折叠首部 zr打开
"zj move to next flod ,zk move to previous flod
"@see more: http://vim.wikia.com/wiki/Folding

"augroup vimrc
"  au BufReadPre * setlocal foldmethod=indent " auto flod when open file
"augroup END

"搜索缓冲区文件列表
function! BufSel(pattern)
  let bufcount = bufnr("$")
  let currbufnr = 1
  let nummatches = 0
  let firstmatchingbufnr = 0
  while currbufnr <= bufcount
    if(bufexists(currbufnr))
      let currbufname = bufname(currbufnr)
      if(match(currbufname, a:pattern) > -1)
        echo currbufnr . ": ". bufname(currbufnr)
        let nummatches += 1
        let firstmatchingbufnr = currbufnr
      endif
    endif
    let currbufnr = currbufnr + 1
  endwhile
  if(nummatches == 1)
    execute ":buffer ". firstmatchingbufnr
  elseif(nummatches > 1)
    let desiredbufnr = input("Enter buffer number: ")
    if(strlen(desiredbufnr) != 0)
      execute ":buffer ". desiredbufnr
    endif
  else
    echo "No matching buffers"
  endif
endfunction

"Bind the BufSel() function to a user-command
"command! -nargs=1 Bs :call BufSel("<args>")
"map <leader>bs :buffers<CR>:Bs<Space>

"""""""""""""""""""
" TIPS
"""""""""""""""""""

" 替换换行符问题
":%s/<Ctrl-V><Ctrl-M>/\r/g

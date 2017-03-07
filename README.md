php-vimrc
=========
###Usage
####Installation
1. BACKUP your `~/.vim` and `~/.vimrc`
2. `cd ~` and `git clone https://github.com/hubiao1003hf/php-vimrc.git`
3. `ln -s  php-vimrc ~/.vim` and `ln -s  php-vimrc/vimrc ~/.vimrc`
4. `cd ~/php-vimrc` and `git submodule init && git submodule update`

#### 插件列表

- ack: 搜索字符串
- ctrlp 搜索文件
- editorconfig
- emmet-vim
- markdown 高亮 markdown 语法
- nerdtree 文件目录列表 TODO 支持隐藏文件
- tabular 等号对齐
- typescript-vim typescript 语法检查和 omni 提示
- vim-addon-mw-util vim-snipmate 插件依赖该插件
- vim-airline vim 状态栏提示
- vim-fugitive 提供 git 基本操作
- vim-javascript-syntax
- vim-jsbeautify 
- vim-jsx jsx 语法高亮和缩进
- vim-multiple-cursors
- vim-nerdtree-tabs 多 tab 共享 nerdtree
- vim-node gf 命令提供模块跳转
- vim-nodejs-complete ctrl-x + ctrl-o 自动完成 nodejs function 
- vim-snipmate 常用代码块自动补全，利用 tab 
- vim-surround 快捷的双引号操作
- vim-tlib 一个 vim 基础库
- vim-ale 异步语法检查
  - eslint js 检测 `npm i eslint -g`
  - tidy html 检测 手动下载：http://binaries.html-tidy.org/
  - jsonlint 
- vim-grepper 异步文件搜索
- codi 更方便的 repl
- html5.vim html5 的标签支持
- nerdcommenter  输入注释的工具
- loremipsum 仅仅用于输入一些指定长度的占位符字符串
- auto-pairs 自动成对输入 `() []` 等一些常见符号
- vimshell
- vimproc vimshell 的依赖，安装代码后，需要进入插件目录编译，`make`
- vim-lexical 字典提示速度很慢




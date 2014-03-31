set nobackup
set t_Co=256
try 
    colorscheme mustang
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
map <Leader>v "+gP
" ,c = Copy
map <Leader>c "+y

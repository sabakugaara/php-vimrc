let g:ale_linters = {
\   'typescript': ['tslint'],
\   'json': ['jsonlint'],
\   'html': ['htmlhint'],
\   'sh': ['shellcheck'],
\   'scss': ['prettier']
\}

autocmd FileType javascript let g:ale_linters = {
\  'javascript': glob('.eslintrc*', '.;') != '' ? [ 'eslint' ] : [ 'standard' ],
\}
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

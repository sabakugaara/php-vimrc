let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\   'json': ['jsonlint'],
\   'html': ['htmlhint']
\}

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0  })
  autocmd FileType javascript call lexical#init({ 'spell': 0  })
augroup END
let g:lexical#spell = 0
let g:lexical#dictionary = ['/usr/share/dict/words',]

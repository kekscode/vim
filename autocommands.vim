" Autocommands for FileTypes
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType rb,ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType sql set omnifunc=sqlcomplete#Complete
autocmd Filetype * set omnifunc=syntaxcomplete#Complete

" Autocommands for Session-Management
autocmd BufWinLeave ?* mkview             " auto-save buffer views
autocmd BufWinEnter ?* silent loadview    " auto-load buffer views


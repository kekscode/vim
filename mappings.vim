" Help:
"
" http://how-to.wikia.com/wiki/How_to_map_keys_in_vim
" http://stackoverflow.com/questions/3776117/vim-what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-ma
"
"
" See also:
"
" :help :map
" :help :noremap
" :help recursive_mapping
" :help :map-modes
"
"
" Mode letters:
"
" n: normal only
" v: visual and select
" o: operator-pending
" x: visual only
" s: select only
" i: insert
" c: command-line
" l: insert, command-line, regexp-search (and others called "Lang-Arg" pseudo-mode)

" bind Ctrl+<movement> keys to move around the windows, 
" instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <c-+> <c-w>+
map <c--> <c-w>-
map <c-=> <c-=>=

" ,d inserts the current date at the cursor
nnoremap <leader>d "=strftime("%d.%m.%Y")<CR>P

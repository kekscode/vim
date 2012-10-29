" Bootstrap Pathogen
filetype off " should be off while pathogen starts
call pathogen#runtime_prepend_subdirectories(expand('~/Dropbox/etc/vim/runtimepath/bundles'))
call pathogen#infect() 
call pathogen#helptags()

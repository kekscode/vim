"""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                 "
" File: Vim configuration file                    "
" Author: stefan.antoni.io                        "
"                                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""
" G E N E R A L "
"""""""""""""""""

" I am Vim. Not Vi.
set nocompatible

" Use Unix as the standard file type
set fileformats=unix,dos,mac

" No beeping at errors
set noerrorbells

" Encoding
set encoding=utf-8

" Change the mapleader for custom shortcuts from "\" to ","
let mapleader=","


""""""""""""""""""""""""""""""""""
" R U N T I M E P A T H  ( T M ) "
""""""""""""""""""""""""""""""""""

" I share my personal config and runtimepath 
" via dropbox on various computers 
set runtimepath+=$HOME/Dropbox/etc/vim/runtimepath


"""""""""""""""""""""""""""""""""""""""""""""""
" A D D I T I O N A L  C O N F I G  F I L E S "
"""""""""""""""""""""""""""""""""""""""""""""""

" Source Pathogen config file to load vim bundles
source $HOME/Dropbox/etc/vim/pathogen-init.vim

" Configuration for Plugins
source $HOME/Dropbox/etc/vim/plugins-config.vim

" Source the autocmds
source $HOME/Dropbox/etc/vim/autocommands.vim


""""""""""""""""""""""""""""""
" U S E R  I N T E R F A C E "
""""""""""""""""""""""""""""""

" I don't need no toolbar 
if has("gui_running")
    set guioptions=aeg " no toolbar in GUI mode
endif

" Set paste mode
set paste

" I usually have a mouse or touchpad
set mouse=a

" Extended auto expanding of commands
set wildmenu

" Extended auto expanding to the longes possible command
" and showing the (shorter) alternatives
set wildmode=longest:full

" Set title in terminal or GUI
set title

" Specify what the title string shows
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=180

" Show a status line at the bottom with various information
if has("statusline")
    set statusline=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}\ [DATEI=%r%F%m%r%h%w]\ [ZEILE=%04l/%L,ZEICHEN=%04v]\ [%p%%]\ [FORMAT=%{&ff}]\ [TYPE=%Y]
endif

" No line wrap
set nowrap

" Two lines of status
set laststatus=2

" Keep the last line
set display=lastline

" Show cursor position
set ruler

" Show (partial) command in the last line of the screen.
set showcmd

" Show which mode is currently active
set showmode

" Support for vim modelines (first line in text files)
set modeline

" Text between 50-80 chars is optimal according to the experts(TM)
set textwidth=79

" Avoid flickering while executing macros
set lazyredraw

" It is OK if buffer windows are closed *before* the content
" is written to disk. Vim will only warn me that there are
" changed (not yet written) buffers, when i close the Vim session
set hidden


"""""""""""""""""""""""""""""""
" B A C K U P  A N D  U N D O "
"""""""""""""""""""""""""""""""

" I am a hardcore ":w" and VCS guy, 
" so i dedided to drop VIMs disaster 
" recovery support stuff:
set nobackup       " no backup files
set nowritebackup  " no backup file while editing
set noswapfile     " no swap files


"""""""""""""""""""""""""""""
" C O L O R  &  S Y N T A X "
"""""""""""""""""""""""""""""

" Gimme Syntax-Highlighting
syntax on

" Gimme line numbers
set number

" This will make Vim set out tab characters,
" trailing whitespace and invisible spaces visually,
" and additionally use the # sign at the end of
" lines to mark lines that extend off-screen.
" For more info, see :h listchars.
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Set fonts for non-terminal Vim
if has('gui_running')
  " Menlo on Mac, Lucida on Windows:
  set guifont=Menlo:h16,Lucida_Console:h16
endif

" Tomorrow Night Bright
" http://chriskempson.com
colors Tomorrow-Night-Bright

" This sets one or multiple 
" vertical bars (helps to align text)
set colorcolumn=+1


""""""""""""""""""""""""""
" T E X T  E D I T I N G "
""""""""""""""""""""""""""

" Set TAB to 4 spaces
set tabstop=4

" Auto-indent shifts 4 spaces
set shiftwidth=4

" Convert every TAB to whitespaces
set expandtab

" insert tabs on the start of a line according to
" shiftwidth, not tabstop
set smarttab

" Put more stuff in the history
set history=1000

" More undo
set undolevels=1000

" A neat trick to set the cursor to
" the center of the screen at all times.
" This is easier on the eyes (IMHO).
set scrolloff=999                         " set the cursor scroll offset

" Use magic characters in patterns
set magic

" Use auto-indenting
set autoindent

" Use the previous line's indentation level to
" determine the next line's indentation level
set copyindent

" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" Always show the matching parenthesis when 
" moving cursor over them
set showmatch                             " set show matching parenthesis

" Allow the backspace
set backspace=2

" Default foldmethod is folding by indentation
" which works on every text file
set foldmethod=indent


"""""""""""""""""""""
" S E A R C H I N G "
"""""""""""""""""""""

" Searches start at the top of the file 
" if the bottom has been reached
set wrapscan

" Highlight search results
set hlsearch

" Start the search immediately (incremental)
set incsearch

" ignorecase is needed if smartcase is used
set ignorecase

" Searches in lowercase *and* UPPERCASE, except
" if UPPER_and_lowerCASE are mixed => then it
" searches in case sensitive mode. Smart, hm?
set smartcase


""""""""""""""""""""""""""""""""""""""""""""""""""""
" H A N D L I N G  F I L E S  &  F I L E T Y P E S "
""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore some patterns when auto-expanding filenames
set wildignore=*.swp,*.bak,*.pyc,*.class

" Vim tries to determine which type of file we're about to edit
filetype on

" Is there a filetype plugin available?
filetype plugin on

" If there is a plugin for the given filetype, Vim sets
" the indentation setting accordingly
filetype plugin indent on

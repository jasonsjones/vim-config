" =========================================================
" Author: Jason Jones <jsjones96@gmail.com>

" This .vimrc file is tailored for my personal use.
" =========================================================


" General "{{{1

" ignore compatability with old vimrc be iMproved required!
set nocompatible
set history=256        " Number of things to remember in history
set autowrite          " Writes on make/shell commands
set autoread
set timeoutlen=2000    " Wait 2 seconds before timing out a mapping.
set ttimeoutlen=100    " and only 100 ms before timing out on a keypress.
set lazyredraw         " Avoid redrawing to screen mid-command.
set ttyscroll=3        " Prefer redraw to scrolling for more than 3 lines.
set clipboard+=unnamed " Yanks go on clipboard instead
set pastetoggle=<F10>  " toggle btwn past & normal: for 'safer' pasting from kb
set tags=./tags;$HOME  " walk directory tree upto $HOME looking for tags

" Modeline {{{2
set modeline
" default numbers of lines ro read for modeline instructions
set modelines=5

" Backup {{{2
set nowritebackup
set nobackup           " do not keep a backup file, use versions instead

" Buffers {{{2
set hidden             " the current buf can be put to the bg w/o writing to disk

" Match and Search {{{2
set ignorecase         " Default to using case insensitive searches,
set smartcase          " unless uppercase letters are used in the regex.
set hlsearch           " Highlight searches by default.
set incsearch          " Incrementally search while typing a /regex
let mapleader=","      " change the mapleader from \ to ,
" {{{2

" Formatting {{{1

" Automatically insert the current comment leader after
" hitting 'o' or 'O' in normal mode
set fo+=o
" Do not automatically insert a comment leader after an enter
set fo-=r
" Do not auto-wrap text using textwidth (does not apply to comments)
"set fo-=t

set backspace=indent,eol,start   " more powerful backspacing

set tabstop=4       " Set the default tabstop
set softtabstop=4
set shiftwidth=4    " Set the default shift width for indents
set expandtab       " Make tabs into spaces (set by tabstop)
set smarttab        " Smarter tab levels

set autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case
syntax enable                  " enable syntax
" }}}
" Visual {{{1
set number     " Display line numbers
set showmatch  " Show matching brackets
set matchtime=5  " Bracket blinking
set novisualbell
set noerrorbells
set laststatus=2   " Always show status line
set t_vb=          " diable any beeps or flashes on error
set ruler          " show ruler
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" Display an incomplete command in the lower right corner of vim window
set showcmd
set shortmess=atI   " Shortens messages
set nolist
set listchars=tab:▸\ ,eol:¬

" Folding {{{2
set foldmethod=marker   " By default, use the marker to determine folds
set foldlevelstart=99   " All folds open by default
set foldcolumn=2        " allow 2 spaces for foldcolumn on left side
" }}}

" Colors {{{2
set background=dark
colorscheme solarized
set t_Co=256
set term=screen-256color

highlight ColorColumn ctermbg=9 guibg=red
call matchadd('ColorColumn', '\%91v', 100)

"if $TERM =~ "-256color"
"endif
"highlight MatchParen ctermbg=8 guibg=#002b36

" GUI {{{2
if has("gui_running")
    set lines=75
    set columns=150
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10
    winpos 15 25
    set guioptions-=r
    set guioptions-=T
    "highlight FoldColumn guifg=cyan guibg=#444444
endif
" "}}}


" Development


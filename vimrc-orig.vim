" Author: Jason Jones <jsjones96@gmail.com>
"
" This .vimrc file is tailored for personal use; however, much of the format
" and logic came from Matthew Wozniski <mjw@drexel.edu> (Thanks, Matt)!
"
" NOTE:
" If you're editing this in Vim and don't know how folding works, type zR to
" unfold everything. And then read ":help folding".
"
" Stop behaving like vi; vim's enhancements are better.  set nocompatible

" Skip the rest of this file unless we have +eval and Vim 7.0 or greater.
" With an older Vim, I'd rather just plain ol' vi-like features reminding me
" to upgrade.
if version >= 700
""" Settings
"""" Mouse, Keyboard, Terminal

" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a 
set ttymouse=xterm2  " Most terminals send modern xterm mouse reporting
                     " but this isn't always detected in GNU Screen.

set timeoutlen=2000  " Wait 2 seconds before timing out a mapping.
set ttimeoutlen=100  " and only 100 ms before timing out on a keypress.
"set lazyredraw       " Avoid redrawing to screen mid-command.
set ttyscroll=3      " Prefer redraw to scrolling for more than 3 lines.

"""" Moving Around/Editing
set nostartofline " Avoid moving cursor to BOL when jumping around.
set whichwrap=b,s,h,l,<,> " <BS> <Space>, h l <Left> <Right> can change lines.
set virtualedit=block " Let cursor move past the last char in <C-v> mode.
set scrolloff=3 " Keep 3 context lines above and below the cursor
set backspace=2 " Allow backspacing over autoindent, EOL, and BOL
set showmatch " Briefly jump to a paren once it's balanced
set matchtime=4 " (for only .4 seconds).
set history=50	" keep 50 lines of command line history
set cpoptions+=$

"""" Searching and Patterns
set ignorecase " Default to using case insensitive searches,
set smartcase " unless uppercase letters are used in the regex.
set hlsearch " Highlight searches by default.
set incsearch " Incrementally search while typing a /regex

"""" Windows and Buffers
set hidden " Hide modified buffers when they are abandoned
set swb=useopen,usetab " Allow changing tabs/windows for quickfix/:sb/etc
set splitright " New windows open to the right of the current one

"""" Insert completion
"set infercase " Try to adjust insert completions for case.

"Set a nice OmniFunc - <CTRL>X <CTRL>O
set ofu=syntaxcomplete#Complete

"Set some nice java functions - <CTRL>X <CTRL>U
set completefunc=javacomplete#Complete

" Make vim popup behave more like an IDE POPUP
set completeopt=longest,menuone

"""" Folding
set foldmethod=syntax " By default, use syntax to determine folds
set foldlevelstart=99 " All folds open by default
set foldcolumn=2      " allow 2 space for foldcolumn on left side

"""" Display
set wrap
set linebreak
set list
set listchars=tab:▸\ ,eol:¬
set number " Display line numbers
set numberwidth=1 " using only 1 column (and 1 space) while possible
set guicursor=n-v-c-i:block-Cursor
"           ve:ver35-Cursor
"           o:hor50-Cursor,
"           ci:ver25-Cursor/lCursor,
"           r-cr:hor20-Cursor/lCursor,
"           sm:block-Cursor
"           -blinkwait175-blinkoff150-blinkon175

"""" Messages, Info, Status
set vb t_vb= " Disable all bells. I hate ringing/flashing.
set confirm " Y-N-C prompt if closing with unsaved changes.
set showcmd " Show incomplete normal mode commands as I type.
set report=0 " : commands always print changed line count.
set shortmess+=a " Use [+]/[RO]/[w] for modified/readonly/written.
set ruler " Show some info, even without statuslines.
set laststatus=2 " Always show statusline, even if only 1 window.

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
 
" let &statusline = '%<%f%{&mod?"[+]":""}%r%'
"  \ . '{&fenc !~ "^$\\|utf-8" || &bomb ? "[".&fenc.(&bomb?"-bom":"")."]" : ""}'
"  \ . '%='
"  \ . '%{exists("actual_curbuf")&&bufnr("")==actual_curbuf?CountMatches(1):""}'
"  \ . '%15.(%l,%c%V %P%)'
 

"""" Tabs/Indent Levels
set autoindent " Do dumb autoindentation when no filetype is set
set textwidth=75
set formatoptions=t
set lbr
set tabstop=4 " Real tab characters are 4 spaces wide,
set shiftwidth=4 " but an indent level is 4 spaces wide.
set softtabstop=4 " <BS> over an autoindent deletes all spaces.
set expandtab " Use spaces, not tabs, for autoindent/tab key.
set cinoptions+=(0
 
"""" Reading/Writing
set noautowrite " Never write a file unless I request it.
set noautowriteall " NEVER.
set noautoread " Don't automatically re-read changed files.
set modeline " Allow vim options to be embedded in files;
set modelines=5 " they must be within the first or last 5 lines.
set ffs=unix,dos,mac " Try recognizing dos, unix, and mac line endings.
set clipboard^=unnamed

"""" Tags
set tags=./tags;/home " Tags can be in ./tags, ../tags, ..., /home/tags.
set showfulltag " Show more information while completing tags.
 
"""" Backups/Swap Files
set nobackup		" do not keep a backup file, use versions instead
 
"""" Command Line
set wildmenu " Menu completion in command mode on <Tab>
set wildmode=full " <Tab> cycles between all matching choices.
set wcm=<C-Z> " Ctrl-Z in a mapping acts like <Tab> on cmdline
source $VIMRUNTIME/menu.vim " Load menus (this would be done anyway in gvim)
" <F5> triggers the menus, even in terminal vim.
map <F5> :emenu <C-Z>
 
"""" Per-Filetype Scripts
" NOTE: These define autocmds, so they should come before any other autocmds.
" That way, a later autocmd can override the result of one defined here.
filetype on        " Enable filetype detection,
filetype indent on " use filetype-specific indenting where available,
filetype plugin on " also allow for filetype-specific plugins,
syntax on          " and turn on per-filetype syntax highlighting.
 
""" Plugin Settings

let g:xml_jump_string = "`"
let g:xml_syntax_folding = 1

let g:BASH_AuthorName = "Jason S. Jones"
let g:BASH_Email = "jsjones96@gmail.com"
"let g:acp_behaviorSnipmateLength = 1

"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'

""" Autocommands
if has("autocmd")
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  " Ledger files with .ldg extensions
  autocmd BufNewFile,BufRead *.ldg,*.ledger  set ft=ledger tw=90

  autocmd BufNewFile,BufRead *.asm set syntax=nasm
  autocmd BufNewFile,BufRead README set ft=txt tw=65
  autocmd BufNewFile,BufRead *.html set ft=html.javascript.css nowrap ts=2 sw=2 et
  autocmd BufNewFile,BufRead *.py set foldmethod=indent nowrap ts=4 sw=4 et

  autocmd BufWritePre,FileWritePre *.[ch] mark s|call LastModified( )|'s
"  autocmd BufWritePre,FileWritePre *.java mark s|call LastModified( )|'s
  autocmd BufNewFile,BufRead *.[ch] set tw=65 

  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

  autocmd Filetype java set makeprg=javac\ %
  autocmd Filetype html setlocal indentkeys-=*<Return>

  augroup END

endif " has("autocmd")

""" Colorscheme

"""" Color settings


"set t_Co=256
set background=dark
"colorscheme evening
"
if has("gui_running")
  set t_Co=256
  colorscheme monokai
  set guifont=UbuntuMono\ 10
  "set guioptions-=T
  "set guioptions+=m
  "highlight Folded guibg=black guifg=cyan
  "highlight Pmenu gui=bold guifg=white guibg=blue
  "highlight PmenuSel guifg=red guibg=blue
  "highlight PmenuSbar guibg=cyan guifg=green
  "highlight PmenuThumb guibg=white guifg=red

  "highlight FoldColumn guibg=black guifg=cyan
  "highlight StatusLine guibg=#555555 guifg=white
 
   highlight NonText guifg=#4a4a59 guibg=#272822
   highlight SpecialKey guifg=#4a4a59 guibg=#272822
   highlight Comment term=bold ctermfg=242 gui=italic guifg=#757153

   set lines=85
   set columns=130
   winpos 15 25

else

  highlight Comment term=none cterm=none ctermfg=4
  highlight vimLineComment term=none cterm=none ctermfg=4
  highlight OL1 ctermfg=white
  highlight Folded cterm=bold ctermfg=cyan ctermbg=NONE
  highlight FoldColumn ctermfg=cyan ctermbg=NONE

  highlight Pmenu cterm=bold ctermfg=white ctermbg=blue
  highlight PmenuSel ctermfg=red ctermbg=blue
  highlight PmenuSbar ctermbg=cyan ctermfg=green
  highlight PmenuThumb ctermbg=white ctermfg=red

endif
"""" Highlight

"highlight clear

"highlight Folded cterm=bold ctermfg=cyan ctermbg=NONE  guibg=black guifg=cyan
"highlight FoldColumn ctermfg=cyan ctermbg=NONE  guibg=black guifg=cyan

"highlight SpellBad term=reverse ctermbg=red ctermfg=white gui=undercurl guisp=red
"highlight MatchParen term=reverse ctermbg=yellow ctermfg=black
"highlight Search term=reverse ctermbg=yellow ctermfg=black
"highlight StatusLine ctermbg=234 ctermfg=244 
"highlight StatusLineNC ctermbg=234 ctermfg=245
"highlight PmenuSel cterm=bold ctermfg=white ctermbg=blue guibg=white guifg=blue



""" Key Mappings
nmap ,s :source ~/.vimrc
nmap ,v :e ~/.vimrc
nmap <leader>l :set list!<CR>

nmap <CR> o<ESC>
nnoremap Y y$

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

nmap <F2> :call ToggleSpell( )<CR>
imap <F2> <ESC>:call ToggleSpell( )<CR>a

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <F6> :buffers<CR>:buffers<Space>

nmap <F8> i*<ESC>


"  --------------------------
"      fix formatting
"  --------------------------
"  <F3> to re-format the current paragraph correctly
"  <F4> to format a line which is too long, and go to the next line
"  <F5> to merge the previous line with the current one, with correct line
"       format
nmap <F3>   gqap
map! <F3>   <ESC>gqapi

nmap <F4>  gqqj
map! <F4>  <ESC>gqqj

nmap <F5>  kgqj
map! <F5>  <ESC>kgqj

" Remap <TAB> for smart completion on various characters
"inoremap <silent> <TAB>    <C-R>=SmartComplete( )<CR>

""" Abbreviations


""" Functions

" source ~/src/vim/c_code_helper.vim
source ~/.vim/autoload/javacomplete.vim

"""" Function ToggleSpell( )
" Spell Check
function! ToggleSpell( )
    if !exists("b:spell")
        setlocal spell spelllang=en_us
        let b:spell = 1
    else
        setlocal nospell
        unlet b:spell
    endif
endfunction


"""" Function LastModified( ) 
" still needs some work
function! LastModified( )
    normal mj
    silent call cursor(1, 1)
    normal zo
    let result = search('\*\s\+Modified:  ', 'e')
    if result
        normal d$
        let timestamp = strftime("%x %X")
        silent call setline(".", getline(".") . ' ' . timestamp)
    endif
    normal 'j
endfunction


"" Stop skipping here
endif


"" vim:fdm=expr:fdl=99:fdc=2
"" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='

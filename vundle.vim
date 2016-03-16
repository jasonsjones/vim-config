" ====================================
" Vundle
" ====================================

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle magage Vundle, required!
Plugin 'gmarik/Vundle.vim'

" My bundles here:

" original repos on github
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'

Plugin 'fholgado/minibufexpl.vim'

Plugin 'ervandew/supertab'

" for sass/scss/haml support
Plugin 'tpope/vim-haml'

" for html5 syntax and autocomplete for tags
Plugin 'othree/html5.vim'

" for json syntax highlighting
Plugin 'elzr/vim-json'

" syntax file for scss (syntacally...)
Plugin 'cakebaker/scss-syntax.vim'

" syntax file for less (css preprocessor)
Plugin 'groenewege/vim-less'

" for snipmate plugin
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'

" Ultisnips plugin for extensible snippets
Plugin 'SirVer/ultisnips'

"Plugin 'honza/vim-snippets'

" for ledger
Plugin 'ledger/vim-ledger'

" for plugin to provide insert mode auto-completion for
" quotes, parens, brackets, etc
Plugin 'Raimondi/delimitMate'

" Enhanced javascript syntax file
"Plugin 'pangloss/vim-javascript'

" Yet another Javascript Syntax
Plugin 'othree/yajs.vim'

" matches html tag pairs
Plugin 'gregsexton/MatchTag'

" emmet plugin for vim
Plugin 'mattn/emmet-vim'

" fuzzy finder ctrl-p
Plugin 'ctrlpvim/ctrlp.vim'

" comprehensive list of colorschemes
Plugin 'flazz/vim-colorschemes'

" Seti colorscheme
Plugin 'trusktr/seti.vim'

Plugin 'edkolev/tmuxline.vim'

" git gutter plugin to track changes
Plugin 'airblade/vim-gitgutter'

" Delete all buffers but current/named buffer
Plugin 'vim-scripts/BufOnly.vim'

" add font icons
Plugin 'ryanoasis/vim-devicons'

" plugin for NERDTree showing git status flags
Plugin 'Xuyuanp/nerdtree-git-plugin'


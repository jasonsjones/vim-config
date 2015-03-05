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

" for snipmate plugin
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

"Plugin 'honza/vim-snippets'

" for ledger
Plugin 'ledger/vim-ledger'

" for plugin to provide insert mode auto-completion for
" quotes, parens, brackets, etc
Plugin 'Raimondi/delimitMate'

" Enhanced javascript syntax file
Plugin 'pangloss/vim-javascript'

" matches html tag pairs
Plugin 'gregsexton/MatchTag'

" emmet plugin for vim
Plugin 'mattn/emmet-vim'

" fuzzy finder ctrl-p
Plugin 'kien/ctrlp.vim'

" jellybeans colorscheme
Plugin 'nanotech/jellybeans.vim'

Plugin 'edkolev/tmuxline.vim'

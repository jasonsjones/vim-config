if has("autocmd")

    " Ledger files with .ldg extensions
    autocmd BufNewFile,BufRead *.ldg,*.ledger  set ft=ledger tw=90
    autocmd BufNewFile,BufRead *.html,*.handlebars  set expandtab ts=4 sw=4
    autocmd BufNewFile,BufRead *.handlebars set ft=html.javascript.css
    autocmd BufNewFile,BufRead *.ejs set ft=html
    autocmd BufNewFile,BufRead *.txt set tw=72 fo+=t
    autocmd BufNewFile,BufRead *.html,*.css set fdm=indent
    autocmd BufNewFile,BufRead *.json set ft=json

    autocmd BufWritePre * :%s/\s\+$//e


    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

    autocmd BufNewFile,BufRead *.java set fdm=syntax
    autocmd Filetype java set makeprg=javac\ %
endif

"if has("gui_running")
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
"endif

augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=78 shiftwidth=4
    autocmd FileType json set softtabstop=4 tabstop=4
    autocmd FileType json set expandtab
    autocmd FileType json set foldmethod=syntax
augroup END

augroup magic
    autocmd!
    autocmd BufWritePost ~/.vim/*.vim source ~/.vimrc
augroup END



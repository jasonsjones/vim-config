" ============================
"         Functions
" ============================


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


" Last modified
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

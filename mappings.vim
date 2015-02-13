" ==========================
"      Key Mappings
" ==========================


nmap <leader>s :source ~/.vimrc
nmap <leader>v :e ~/.vim/config.vim

nmap <leader>t :NERDTreeToggle<CR><C-w>l

" minibufferexplorer mappings
noremap <C-TAB>  :MBEbn<CR>
noremap <C-S-TAB>  :MBEbp<CR>
nmap <leader>mf :MBEFocus<CR>

nmap <leader>l :set list!<CR>

nmap <CR> o<ESC>
nnoremap Y y$

imap jj <ESC>

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

nmap <F2> :call ToggleSpell( )<CR>
imap <F2> <ESC>:call ToggleSpell( )<CR>a

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

nnoremap <F6> :buffers<CR>:b
nnoremap <F7> :MBEToggle<CR>


" mapping to clear transaction in ledger
nmap <F8> i*<ESC>

vnoremap < <gv
vnoremap > >gv

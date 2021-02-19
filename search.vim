""" Settings related to searching, of all kinds

" Fuzzy search
map <C-p> :Files<cr>
map <C-b> :Buffers<cr>
map <C-f> :Ag<cr>

" Search for selection
vmap * y:let @/=@"<cr>

" Remove highlight shortcut
map \\ :nohlsearch<cr>

" Partial search shortcuts
cnoremap <expr> <Tab>   getcmdtype() =~ '[\/?]' ? "<C-g>" : "<C-z>"
cnoremap <expr> <S-Tab> getcmdtype() =~ '[\/?]' ? "<C-t>" : "<S-Tab>"

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>


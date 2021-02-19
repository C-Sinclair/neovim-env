let mapleader = ";"

if !exists('g:vscode')
    source $HOME/.config/nvim/package.vim

    source $HOME/.config/nvim/airline.vim
    source $HOME/.config/nvim/coc.vim
    source $HOME/.config/nvim/colours.vim
    source $HOME/.config/nvim/git.vim
    source $HOME/.config/nvim/search.vim
    source $HOME/.config/nvim/sets.vim
    source $HOME/.config/nvim/splits.vim
    source $HOME/.config/nvim/terminal.vim
    source $HOME/.config/nvim/testing.vim
    source $HOME/.config/nvim/typescript.vim

    " Move lines
    vnoremap J :m '>+1<cr>gv=gv
    vnoremap K :m '<-2<cr>gv=gv

    " Change command doesnt copy to buffer by default
    nnoremap c "_c

    " Buffers
    nmap <Leader><Tab> :bn<cr>      " Switch buffers
    nmap <Leader><S-Tab> :bN<cr>      " Switch buffers
    nmap \q :Bdelete<cr>              " Close buffer
    nmap <Leader>f :MaximizerToggle<cr> " Maximise current buffer

    " Shortcutting split navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

    " Traditional save in insert mode
    inoremap <C-s> <Esc>:w<cr> i

    " Open and close splits
    map <Leader>l :vsp<cr>
    map <Leader><Esc> :close<cr>

    " Save file as sudo on files that require root permission
    cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

    " Append semicolon/comma
    imap ;; <Esc>A;<Esc>
    imap ,, <Esc>A,<Esc>

elseif
    source $HOME/.config/nvim/vspackage.vim


endif


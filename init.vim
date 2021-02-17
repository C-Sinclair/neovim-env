let mapleader = " "

source $HOME/.config/nvim/package.vim

" Move lines
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

" Change command doesnt copy to buffer by default
nnoremap c "_c

" Buffers
nmap <Leader><Tab> :bn<cr>      " Switch buffers
nmap <Leader><S-Tab> :bN<cr>      " Switch buffers
nmap \q :Bdelete<cr>              " Close buffer

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

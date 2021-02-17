fun! StyleEnvironment()
    " Appearance
    set termguicolors     " enable true colors support
    colorscheme space-vim-dark
    hi Comment cterm=italic

    " Background
    highlight Normal guibg=none
endfun

call StyleEnvironment()

nnoremap <C-s><C-s> :call StyleEnvironment()<cr>

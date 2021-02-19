""" Plugins centred around the Coc

" Autocomplete with Coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:coc_global_extensions=['coc-pairs', 'coc-tsserver', 'coc-css', 'coc-prettier']

" File explorer
map <leader>a :CocCommand explorer<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:go_def_mapping_enabled=0

" Used in the tab autocompletion for coc
function! s:check_back_space() abort
    let col=col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


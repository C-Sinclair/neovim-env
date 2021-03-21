local u = require'utils'

u.create_augroup('main', {
  [[ BufEnter * lua require'completion'.on_attach() ]], 
  [[ BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{} ]]
})


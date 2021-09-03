local u = require'sinclair/utils'

u.create_augroup('rust', {
  [[ BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{} ]],
})

u.create_augroup('format', {
  [[ BufWritePost *.js,*.jsx,*.ts,*.tsx FormatWrite ]]
})

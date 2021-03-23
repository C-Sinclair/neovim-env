local u = require'sinclair/utils'

u.create_augroup('rust', {
  [[ BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{} ]],
})

u.create_augroup('jsx', {
  [[ FileType javascript.jsx setlocal commentstring={/*\ %s\ */} ]],
  [[ FileType typescriptreact setlocal commentstring={/*\ %s\ */} ]],
})

u.create_augroup('formatting', {
  [[ BufWritePre * Neoformat ]]
})

u.create_augroup('vim_src', {
  -- TODO get auto reloading of lua files working
  -- [[ BufWritePost $HOME/.config/nvim/**/*.lua :lua require'utils'.reload(%:p) ]]
})

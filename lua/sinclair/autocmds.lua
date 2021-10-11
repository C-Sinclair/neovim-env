local u = require 'sinclair/utils'

u.create_augroup('rust', {
    [[ BufEnter,BufWinEnter,TabEnter *.rs lua require'lsp_extensions'.inlay_hints{} ]]
})

u.create_augroup('lua', {
    [[ BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100) ]],
    [[ BufWritePost *.lua lua require'sinclair/utils'.reload() ]]
})

u.create_augroup('format', {
    [[ BufWritePre *.ts,*.tsx,*.js,*.jsx,*.prisma,*.rs lua vim.lsp.buf.formatting_sync(nil, 100) ]]
})

u.create_augroup('tmux',
                 {[[ BufWritePost .tmux.conf !tmux source ~/.tmux.conf ]]})

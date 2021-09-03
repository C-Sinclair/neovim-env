vim.g.mapleader = ';'

require'sinclair/sets' -- must come first for coq
require'sinclair/plugins'
require'sinclair/lsp'
require'sinclair/keymaps'
require'sinclair/autocomplete'
require'sinclair/commands'
-- require'sinclair/debugger'
require'sinclair/jsx'

-- plugin specific
require'sinclair/bufferline'
require'sinclair/dashboard'
require'sinclair/gitsigns'
require'sinclair/explorer'
require'sinclair/treesitter'
require'sinclair/telescope'
require'sinclair/statusline'
require'sinclair/trouble'
require'sinclair/wilder'
require'sinclair/formatter'

require'sinclair/autocmds'


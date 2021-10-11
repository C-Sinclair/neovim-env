vim.api.nvim_command [[ set completeopt=menu,menuone,noselect ]]
vim.api.nvim_command [[ set lazyredraw ]]

local cmp = require 'cmp'
local luasnip = require 'luasnip'

cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    mappin = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({select = true})
    },
    sources = {{name = 'nvim_lsp'}, {name = 'luasnip'}, {name = 'buffer'}}
}

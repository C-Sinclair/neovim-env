require'lspconfig'.tsserver.setup{
   on_attach = require'lsp'.common_on_attach
}
require'lspconfig'.yamlls.setup{
   on_attach = require'lsp'.common_on_attach
}
require'lspconfig'.vuels.setup{
   on_attach = require'lsp'.common_on_attach
}
require'lspconfig'.svelte.setup{
   on_attach = require'lsp'.common_on_attach
}
require'lspconfig'.sumneko_lua.setup{
   on_attach = require'lsp'.common_on_attach
}
require'lspconfig'.jsonls.setup{
   on_attach = require'lsp'.common_on_attach
}
require'lspconfig'.html.setup{
   on_attach = require'lsp'.common_on_attach
}
require'lspconfig'.cssls.setup{
   on_attach = require'lsp'.common_on_attach
}

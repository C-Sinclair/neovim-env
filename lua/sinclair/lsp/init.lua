local nvim_lsp = require'lspconfig'

local set_keymap = vim.api.nvim_set_keymap

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

local servers = { 
  "pyright", 
  "rust_analyzer", 
  "tsserver",
  "bashls",
  "cssls",
  "html",
  "jsonls",
  "yamlls",
  "svelte",
  "vuels"
}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
end

require'nlua.lsp.nvim'.setup(require'lspconfig', {
  on_attach = on_attach,
  globals = {
    'use'
  }
})

require'lspsaga'.init_lsp_saga()

-- code references
set_keymap('n', 'gr', [[ :lua require'telescope.builtin'.lsp_references()<CR> ]], { noremap = true })

-- goto definition
set_keymap('n', 'gd', [[ :lua require'telescope.builtin'.lsp_definitions()<CR> ]], { noremap = true })
  
-- goto type def
set_keymap('n', 'gt', [[ :lua vim.lsp.buf.type_definition()<CR> ]], { noremap = true })

-- open hover
set_keymap('n', 'KK', [[ :lua require'lspsaga.hover'.render_hover_doc()<CR> ]], { noremap = true })

-- code actions
set_keymap('n', 'KA', [[ :lua require'lspsaga.codeaction'.code_action()<CR> ]], { noremap = true })

-- quickfind refs
set_keymap('n', 'KF', [[ :lua require'lspsaga.provider'.lsp_finder()<CR> ]], { noremap = true })

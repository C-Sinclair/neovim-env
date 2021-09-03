local coq = require'coq'
local nvim_lsp = require'lspconfig'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(_, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
  
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
  "tsserver",
  "jsonls",
  "yamlls"
}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup(coq.lsp_ensure_capabilities {
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

local set_keymap = vim.api.nvim_set_keymap

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    underline = true,
    signs = true,
  }
)
vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]

-- require'lspsaga'.init_lsp_saga()

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

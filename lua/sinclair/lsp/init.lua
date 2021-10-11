-- local coq = require("coq")
local nvim_lsp = require("lspconfig")

local lsp_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require'cmp_nvim_lsp'.update_capabilities(lsp_capabilities)
-- lsp_capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])

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
    "tsserver", "jsonls", "yamlls", "prismals", "pyright", "rust_analyzer",
    "graphql", "gopls"
}
for _, lsp in ipairs(servers) do
    -- coq setup 
    -- nvim_lsp[lsp].setup(coq.lsp_ensure_capabilities({
    --     on_attach = on_attach,
    --     capabilities = capabilities,
    --     flags = {debounce_text_changes = 150}
    -- }))
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {debounce_text_changes = 150}
    }
end

-- efm 
-- all purpose lang server for formatting
require"lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    filetypes = {"lua"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {
                    formatCommand = "lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=80 --break-after-table-lb",
                    formatStdin = true
                }
            }
        }
    }
}

-- lua
require('nlua.lsp.nvim').setup(nvim_lsp, {on_attach = on_attach})

local set_keymap = vim.api.nvim_set_keymap

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics,
                 {virtual_text = false, underline = true, signs = true})

set_keymap("n", "gr",
           [[ :lua require'telescope.builtin'.lsp_references()<CR> ]],
           {noremap = true})
set_keymap("n", "gd",
           [[ :lua require'telescope.builtin'.lsp_definitions()<CR> ]],
           {noremap = true})
set_keymap("n", "gv",
           [[ :lua require'telescope.builtin'.lsp_definitions { jump_type = 'vsplit' }<CR> ]],
           {noremap = true})
set_keymap("n", "gt", [[ :lua vim.lsp.buf.type_definition()<CR> ]],
           {noremap = true})
set_keymap("n", "KK", [[ :lua vim.lsp.buf.hover()<CR> ]], {noremap = true})
set_keymap("n", "KA", [[ :lua vim.lsp.buf.code_action()<CR> ]], {noremap = true})
set_keymap("n", "KL", [[:lua vim.lsp.diagnostic.show_line_diagnostics()<CR>]],
           {noremap = true})
set_keymap("n", "KH", [[:lua vim.lsp.buf.signature_help()<CR>]],
           {noremap = true})

require "sinclair/lsp/utils"

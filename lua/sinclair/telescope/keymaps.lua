local set_keymap = vim.api.nvim_set_keymap
local set_nmap = function(key, action)
    set_keymap('n', key, action, {noremap = true})
end
local opts = {noremap = true}

-- open buffers
set_keymap('n', '<C-b>', [[ :lua require'sinclair.telescope'.buffers()<CR> ]],
           opts)

-- open file
set_keymap('n', '<C-p>', [[ :lua require'telescope.builtin'.find_files()<CR>]],
           opts)

-- open recent files
set_keymap('n', '<C-t><C-r>',
           [[ :lua require'telescope.builtin'.oldfiles()<CR> ]], opts)

-- search across project
set_keymap('n', '<C-f>', [[ :lua require'telescope.builtin'.live_grep()<CR>]],
           opts)

-- search vim dotfiles
set_keymap('n', '<Leader>v',
           [[ :lua require'sinclair.telescope'.search_dotfiles()<CR> ]], opts)

-- open repos
set_keymap('n', '<C-t>r',
           [[ :lua require'sinclair.telescope'.pick_repo()<CR> ]], opts)

-- change branches
set_keymap('n', '<C-t>b',
           [[ :lua require("telescope.builtin").git_branches()<CR> ]], opts)

-- reload previous search
set_keymap('n', '<C-t><C-t>',
           [[ :lua require"telescope.builtin".resume()<CR> ]], opts)

-- search registers
set_keymap('n', '<C-t>c', [[ :lua require"telescope.builtin".registers()<CR> ]],
           opts)

-- lsp
set_nmap('<C-l>r', [[ :lua require"telescope.builtin".lsp_references()<CR> ]])
set_nmap('<C-l>ds',
         [[ :lua require"telescope.builtin".lsp_document_symbols()<CR> ]])
set_nmap('<C-l>ws',
         [[ :lua require"telescope.builtin".lsp_workspace_symbols()<CR> ]])
set_nmap('<C-l>wd',
         [[ :lua require"telescope.builtin".lsp_workspace_diagnostics()<CR> ]])
set_nmap('<C-l>tr', [[ :lua require"telescope.builtin".treesitter()<CR> ]])


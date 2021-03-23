local set_keymap = vim.api.nvim_set_keymap

-- open buffers
set_keymap('n', '<C-b>', [[ :lua require'telescope.builtin'.buffers()<CR> ]],  { noremap = true })

-- open file
set_keymap('n', '<C-p>', [[ :lua require'telescope.builtin'.find_files()<CR>]], { noremap = true })

-- search across project
set_keymap('n', '<C-f>', [[ :lua require'telescope.builtin'.live_grep()<CR>]], { noremap = true })

-- search vim dotfiles
set_keymap('n', '<Leader>v', [[ :lua require'sinclair.telescope'.search_dotfiles()<CR> ]], { noremap = true })


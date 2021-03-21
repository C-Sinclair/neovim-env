local set_keymap = vim.api.nvim_set_keymap

-- open git status
set_keymap('n', '<Leader>gs', ':G<CR>', { noremap = true, silent = true })

-- search git branches
set_keymap('n', '<Leader>gc', [[ :lua require'sinclair.telescope'.git_branches()<CR>]], { noremap = true })

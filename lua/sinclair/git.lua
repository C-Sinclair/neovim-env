local set_keymap = vim.api.nvim_set_keymap

-- open git status
set_keymap('n', '<Leader>gs', ':G<CR>', { noremap = true, silent = true })

-- git commit
set_keymap('n', '<Leader>gc', ':G commit<CR>', { noremap = true })

-- search git branches
set_keymap('n', '<Leader>gb', [[ :lua require'sinclair.telescope'.git_branches()<CR>]], { noremap = true })

-- list prs
set_keymap('n', '<Leader>gpr', [[ :lua require'sinclair.telescope'.git_prs()<CR>]], { noremap = true })

-- flog graph
set_keymap('n', '<Leader>gg', [[ :Flog<CR>]], { noremap = true })

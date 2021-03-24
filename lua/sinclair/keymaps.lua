local set_keymap = vim.api.nvim_set_keymap

-- run file
set_keymap('n', '<Leader>r', [[ :Runfile %<CR> ]], {})

-- switch buffers
set_keymap('n', '<Tab>', ':bn<CR>', { noremap = true, silent = true })
set_keymap('n', '<S-Tab>', ':bN<CR>', { noremap = true, silent = true })

-- maximise buffer
set_keymap('n', '<Leader>f', ':MaximizerToggle!<CR>', { noremap = true })

-- movements
set_keymap('n', '<C-h>', '<C-w>h<CR>', { silent = true, noremap = true })
set_keymap('n', '<C-j>', '<C-w>j<CR>', { silent = true, noremap = true })
set_keymap('n', '<C-k>', '<C-w>k<CR>', { silent = true, noremap = true })
set_keymap('n', '<C-l>', '<C-w>l<CR>', { silent = true, noremap = true })

-- nohighlight search
set_keymap('n', '<Leader>h', ':nohlsearch<CR>', {})

-- save change mode to blackhole register
set_keymap('n', 'c', '"_c', { noremap = true })

-- wrap/nowrap
set_keymap('n', '<A-z>', ':set wrap!<CR>', {})

-- move lines -- TODO not working
-- set_keymap('v', 'J', [[ '>+1<cr>gv=gv ]], {})
-- set_keymap('v', 'K', [[ '<-2<cr>gv=gv ]], {})

-- search -- TODO not working
-- set_keymap('v', '*', [[ y:let @/=@"<CR> ]], {}) 

-- insert mode -- TODO go back to dropped mark 
set_keymap('i', '<C-S>', '<Esc>:w<CR>', {})
set_keymap('i', ';;', '<Esc>A;<Esc>gi', {})
set_keymap('i', ',,', '<Esc>A,<Esc>gi', {})

-- tabbing
set_keymap('v', '>', '>gv', { noremap = true, silent = true })
set_keymap('v', '<', '<gv', { noremap = true, silent = true })

-- splits
set_keymap('n', '<Leader>l', ':vsp<CR>', {})
set_keymap('n', '<Leader><Esc>', ':close<CR>', {})

-- terminal
set_keymap('n', '<Leader>t', ':terminal<CR>', { noremap = true })
set_keymap('t', '<Esc>', [[ <C-\><C-n> ]], { noremap = true })
set_keymap('t', '<C-h>', '<C-h>', { noremap = true })
set_keymap('t', '<C-l>', '<C-l>', { noremap = true })


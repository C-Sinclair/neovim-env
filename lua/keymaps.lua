local set_keymap = vim.api.nvim_set_keymap

-- run file
set_keymap('n', '<Leader>r', [[ :Runfile %<CR> ]], {})

-- tree
set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- command pallete
set_keymap('n', '<Leader>b', ':Buffers<CR>', { noremap = true, silent = true })
set_keymap('n', '<Leader>p', ':Files<CR>', { noremap = true, silent = true })
set_keymap('n', '<Leader>f', ':Ag<CR>', { noremap = true, silent = true })

-- git
set_keymap('n', '<Leader>gs', ':G<CR>', { noremap = true, silent = true })

-- buffers
set_keymap('n', '<Leader><Tab>', ':bn<CR>', { noremap = true, silent = true })
set_keymap('n', '<Leader><S-Tab>', ':bN<CR>', { noremap = true, silent = true })
set_keymap('n', '<Leader>q', 'bdelete<CR>', { noremap = true, silent = true })

-- movements
set_keymap('n', '<C-h>', '<C-w>h<CR>', { silent = true })
set_keymap('n', '<C-j>', '<C-w>j<CR>', { silent = true })
set_keymap('n', '<C-k>', '<C-w>k<CR>', { silent = true })
set_keymap('n', '<C-l>', '<C-w>l<CR>', { silent = true })

-- misc
set_keymap('n', '<Leader>h', ':nohlsearch<CR>', {})
set_keymap('n', 'c', '"_c', { noremap = true })

-- move lines
set_keymap('v', 'J', [[ '>+1<cr>gv=gv ]], {})
set_keymap('v', 'K', [[ '<-2<cr>gv=gv ]], {})

-- search -- TODO not working
-- set_keymap('v', '*', [[ y:let @/=@"<CR> ]], {}) 

-- insert mode
set_keymap('i', '<C-S>', '<Esc>:w<CR>', {})
set_keymap('i', ';;', '<Esc>A;<Esc>gi', {})
set_keymap('i', ',,', '<Esc>A,<Esc>gi', {})

-- tabbing
set_keymap('v', '>', '>gv', { noremap = true, silent = true })
set_keymap('v', '<', '<gv', { noremap = true, silent = true })

-- splits
set_keymap('n', '<Leader>l', ':vsp<CR>', {})
set_keymap('n', '<Leader><Esc>', ':close<CR>', {})

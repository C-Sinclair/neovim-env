local set_keymap = vim.api.nvim_set_keymap

-- run file
set_keymap('n', '<Leader>rf', [[ :Runfile %<CR> ]], {})
-- run single line
set_keymap('n', '<Leader>rl', [[ :Runline<CR> ]], {})

-- switch buffers
set_keymap('n', '<Tab>', ':bn<CR>', {noremap = true})
set_keymap('n', '<S-Tab>', ':bN<CR>', {noremap = true})

-- movements - only left and right as up down splits are no bueno
set_keymap('n', '<C-h>', '<C-w>h<CR>', {noremap = true})
set_keymap('n', '<C-l>', '<C-w>l<CR>', {noremap = true})

-- nohighlight search
set_keymap('n', '<Leader>h', ':nohlsearch<CR>', {})

-- save change mode to blackhole register
set_keymap('n', 'c', '"_c', {noremap = true})

-- wrap/nowrap
set_keymap('n', '<A-z>', ':set wrap!<CR>', {})

-- close buffer, but not the split
set_keymap('n', '<A-w>', ':bp | bd #<CR>', {silent = true})

-- reopen last closed buffer 
set_keymap('n', '<A-t>', ':e #<CR>', {silent = true})

-- move lines -- TODO not working
-- set_keymap('v', 'J', [[ '>+1<cr>gv=gv ]], {})
-- set_keymap('v', 'K', [[ '<-2<cr>gv=gv ]], {})

-- search -- TODO not working
-- set_keymap('v', '*', [[ y:let @/=@"<CR> ]], {}) 

-- insert mode -- TODO go back to dropped mark 
set_keymap('i', '<C-S>', '<Esc>:w<CR>', {})

-- tabbing
set_keymap('v', '<Tab>', '>gv', {noremap = true, silent = true})
set_keymap('v', '<S-Tab>', '<gv', {noremap = true, silent = true})

-- splits
set_keymap('n', '<Leader>l', ':vsp<CR>', {})
set_keymap('n', '<Leader><Esc>', ':close<CR>', {})

-- formatting
set_keymap('n', '<Leader>ff', ':!eslint % --no-ignore --fix<CR>',
           {silent = true})

-- quickfix lists
-- TODO toggle quickfix list https://github.com/ThePrimeagen/.dotfiles/blob/ca41b9e81a131cc0ac414d26d6703b5c21fd143a/nvim/.config/nvim/plugin/navigation.vim
set_keymap('n', '<C-q>', [[ :lua require'sinclair/quickfix'.toggle_qf()<CR> ]],
           {})
set_keymap('n', '<C-j>', [[ :cprev<CR>zz ]], {})
set_keymap('n', '<C-k>', [[ :cnext<CR>zz ]], {})

-- consistent Y-ing
set_keymap('n', 'Y', [[ y$ ]], {noremap = true})

-- easier start and end line
-- not working as expected for some reason
-- set_keymap('n', 'H', [[ ^ ]], {noremap = true})
-- set_keymap('n', 'L', [[ $ ]], {noremap = true})

-- move visual block
set_keymap('v', 'J', [[ :m '>+1<CR>gv=gv ]], {noremap = true})
set_keymap('v', 'K', [[ :m '<-2<CR>gv=gv ]], {noremap = true})

-- replace visual block
-- set_keymap('v', 'S', [[ "hy:%s/<C-r>h//g<Left><Left> ]], {noremap = true})

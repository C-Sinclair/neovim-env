local ncommands = {}
local icommands = {}
local vcommands = {}

-- run file
ncommands[[ <Leader>r ]] = [[ :Runfile %<CR> ]]

-- tree
ncommands['<Leader>e'] = ':NvimTreeToggle<CR>'

-- command pallete
ncommands['<Leader>b'] = ':Buffers<CR>'
ncommands['<Leader>p'] = ':Files<CR>'
ncommands['<Leader>f'] = ':Ag<CR>' 

-- git
ncommands['<Leader>gs'] = ':G<CR>'

-- buffers
ncommands['<Leader><Tab>'] = ':bn<CR>'
ncommands['<Leader><S-Tab>'] = ':bN<CR>'
ncommands['<Leader>q'] = 'bdelete<CR>'

-- movements
ncommands['<C-h>'] = '<C-w>h<CR>'
ncommands['<C-j>'] = '<C-w>j<CR>'
ncommands['<C-k>'] = '<C-w>k<CR>'
ncommands['<C-l>'] = '<C-w>l<CR>'

-- misc
ncommands['<Leader>h'] = ':nohlsearch<CR>'
ncommands['c'] = '"_c'

-- move lines
vcommands['J'] = [[ '>+1<cr>gv=gv ]]
vcommands['K'] = [[ '<-2<cr>gv=gv ]]

-- search
vcommands['*'] = [[ y:let @/=@"<CR> ]]

-- insert mode
icommands['<C-S>'] = '<Esc>:w<cr>'
icommands[';;'] = '<Esc>A;<Esc>gi'
icommands[',,'] = '<Esc>A,<Esc>gi'

for k, v in pairs(ncommands) do
	vim.api.nvim_set_keymap('n', k, v, { noremap = true, silent = true }) 
end
for k, v in pairs(icommands) do
	vim.api.nvim_set_keymap('i', k, v, { noremap = true, silent = true }) 
end
for k, v in pairs(vcommands) do
	vim.api.nvim_set_keymap('v', k, v, { noremap = true, silent = true }) 
end

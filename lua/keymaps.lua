function set_key(mode, key, command) 
	vim.api.nvim_set_keymap(mode, key, command, { noremap = true, silent = true }) 
end

local commands = {}

commands['<Leader>h'] = ':nohlsearch<CR>'
commands['<Leader>e'] = ':NvimTreeToggle<CR>'
commands['<Leader>b'] = ':Buffers<CR>'
commands['<Leader>f'] = ':Files<CR>'

for k, v in pairs(commands) do
	set_key('n', k, v)
end



local execute = vim.api.nvim_command

function set(opt)
  execute('set '..opt)
end

-- undo
set('undodir=~/.local/undo/')
set('undofile')

-- Swap/backup
set('noswapfile')
set('nobackup')
set('nowritebackup')

-- Tabs
set('tabstop=2')
set('softtabstop=2')
set('shiftwidth=2')
set('expandtab')
set('smartindent')

-- Custom vims
set('exrc')

-- Enable autocompletion:
set('wildmode=longest,list,full')

-- Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set('splitbelow splitright')

-- Search
set('hls')

-- Implicit cases for search
set('smartcase')
set('ignorecase')

-- Misc
set('clipboard+=unnamedplus')
set('hidden')
set('nocompatible')

execute('filetype plugin on')
execute('syntax on')
set('encoding=utf-8')

set('number relativenumber')
set('scrolloff=8')

set('updatetime=300')
set('signcolumn=yes')

set('cmdheight=2')
set('shortmess+=c')

set('wildcharm=<C-z>')

set('termguicolors')     -- enable true colors support
execute('colorscheme space-vim-dark')
execute('hi Comment cterm=italic')

-- Background
execute('highlight Normal guibg=none')

-- export set func for use elsewhere 
local M = {}
M.set = set
return M

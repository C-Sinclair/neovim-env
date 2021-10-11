local execute = vim.api.nvim_command

local function set(opt)
    execute('set ' .. opt)
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

set('termguicolors') -- enable true colors support
execute('colorscheme space-vim-dark')
execute('hi Comment cterm=italic')

-- Background
execute('highlight Normal guibg=none')

-- move up and down over "non" physical lines
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true})

-- Coq
vim.g.coq_settings = {auto_start = true, keymap = {jump_to_mark = "<c-y><c-h>"}}

-- Unset unneeded builtins
local disabled_built_ins = {
    "netrw", "netrwPlugin", "netrwSettings", "netrwFileHandlers", "gzip", "zip",
    "zipPlugin", "tar", "tarPlugin", "getscript", "getscriptPlugin", "vimball",
    "vimballPlugin", "2html_plugin", "logipat", "rrhelper", "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do vim.g["loaded_" .. plugin] = 1 end

-- export set func for use elsewhere 
local M = {}
M.set = set
return M

vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

vim.cmd('source $HOME/.config/nvim/vim/sets.vim')

require('plugins')
require('keymaps')
require('commands')

local set = require'sinclair.sets'.set

local M = {}

M.on_attach = function()
  require'completion'.on_attach()
end

set('completeopt=menuone,noinsert,noselect')

vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy', 'all'}
vim.g.completion_matching_smart_case = 1

return M

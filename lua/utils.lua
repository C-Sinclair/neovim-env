local execute = vim.api.nvim_command

local M = {}

function M.is_buffer_empty()
  -- Check whether the current buffer is empty
  return vim.fn.empty(vim.fn.expand('%:t')) == 1
end

function M.has_width_gt(cols)
  -- Check if the windows width is greater than a given number of columns
  return vim.fn.winwidth(0) / 2 > cols
end

function M.create_augroup(name, cmds)
  execute('augroup '..name)
  execute('autocmd!')
  for _, def in ipairs(cmds) do
    local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
    execute(command)
  end
  execute('augroup END')
end

return M

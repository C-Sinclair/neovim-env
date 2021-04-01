local execute = vim.api.nvim_command

P = function(c)
  print(vim.inspect(c))
end

local M = {}

function M.makeScratch()
    execute('enew') 
    --    vim.bo[0].buftype=nofile
    --   vim.bo[0].bufhidden=hide
    --  vim.bo[0].swapfile=false
end

-- run a visually selected block
function M.runBlock()
  local _, start_row, start_col, _ = unpack(vim.fn.getpos("'<"))
  -- FIXME - vim.fn.getpos is not returning anything
  local _, end_row, end_col, _ = unpack(vim.fn.getpos("'>"))
  local lines = vim.fn.getline(start_row, end_row)
  lines[1] = lines[1]:sub(start_col) -- might be +- 1 because of Lua's base 1 arrays
  lines[-1] = lines[-1]:sub(0, end_col)
  local str = ""
  for v in ipairs(lines) do
    str = str.." "..v
  end
  loadstring(str)()
end

function M.runLine()
  local str = vim.fn.getline('.') 
  loadstring(str)()
end 

function M.newFile()
  local file = vim.fn.input('New file name')
  -- print(vim.inspect(file))
  execute(':e '..file)
  execute(':!mkdir -p %:h')
end

return M

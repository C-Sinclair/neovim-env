local api = vim.api
local M = {}

function M.makeScratch()
    api.nvim_command('enew') 
    --    vim.bo[0].buftype=nofile
    --   vim.bo[0].bufhidden=hide
    --  vim.bo[0].swapfile=false
end

function M.runFile(file)
    -- if lua run file  
end

return M

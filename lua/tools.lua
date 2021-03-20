local execute = vim.api.nvim_command
local M = {}

function M.makeScratch()
    execute('enew') 
    --    vim.bo[0].buftype=nofile
    --   vim.bo[0].bufhidden=hide
    --  vim.bo[0].swapfile=false
end

function M.runFile(file)
    -- if lua run file  
end

function M.newFile()
    file = vim.fn.input('New file name')
    print(vim.inspect(file))
    execute(':e '..file)
    execute(':!mkdir -p %:h')
end

return M

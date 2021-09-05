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
    execute('augroup ' .. name)
    execute('autocmd!')
    for _, def in ipairs(cmds) do
        local command = table.concat(vim.tbl_flatten {'autocmd', def}, ' ')
        execute(command)
    end
    execute('augroup END')
end

-- reload the current file
function M.reload()
    local expanded = vim.fn.expand('%:r')
    local _, file = expanded:match('(lua/)(.*)')
    if file then
        print('reloading ' .. file)
        package.loaded[file] = nil
        require(file)
    end
end

-- could use this to run all sorts of code - node/python etc etc
-- Luadev seems to handle this pretty nicely, so just use that for now
-- function M.execute(str)
--   local ft = vim.bo.filetype
--   if ft == 'lua' then 
--     loadstring(str)()
--   elseif ft == 'vim' then 
--     vim.cmd('call execute( '..str..' )')
--   end
-- end

-- function M.execute_line()
--   local line = vim.api.nvim_get_current_line()
--   execute(line)
-- end

return M

local execute = vim.api.nvim_command

execute('command! Scratch lua require\'tools\'.makeScratch()')
execute('command! Runfile lua require\'tools\'.runFile()')

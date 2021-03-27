local execute = vim.api.nvim_command

execute('command! Scratch lua require\'sinclair.tools\'.makeScratch()')
execute('command! Runfile lua require\'sinclair.tools\'.runFile()')
execute('command! Runline lua require\'sinclair.tools\'.runLine()')


vim.api.nvim_exec(
[[ 
  call wilder#setup({ 'modes': [':', '/', '?'], 'next_key': '<Tab>', 'previous_key': '<S-Tab>', 'accept_key': '<Down>', 'reject_key': '<Up>' })
]], false)
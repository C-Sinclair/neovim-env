-- Harpoon Drop
vim.api.nvim_set_keymap('n', '<c-h>d',
                        [[ :lua require("harpoon.mark").add_file()<CR> ]],
                        {noremap = true})

-- help menu
vim.api.nvim_set_keymap('n', '<c-h><c-h>',
                        [[ :lua require("harpoon.ui").toggle_quick_menu()<CR> ]],
                        {noremap = true})

for _, i in ipairs({1,2,3,4,5}) do
  vim.api.nvim_set_keymap('n', '<c-h>'..i, [[ :lua require("harpoon.ui").nav_file(]]..i..[[)<CR>]], {noremap=true})
end

--- ChadTree
local chadtree_settings = {
    ["options.show_hidden"] = true,
    ["options.close_on_open"] = true,
    ["view.open_direction"] = 'right'
}
vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
vim.api.nvim_set_keymap('n', '<Leader>e', '<cmd>CHADopen<CR>',
                        {noremap = true, silent = true})

-- NNN 
-- require'nnn'.setup {
--     command = "nnn -o -C",
--     set_default_mappings = 0,
--     replace_netrw = 1,
--     action = {["<c-v>"] = "vsplit"},
--     layout = {right = '20%'}
-- }
-- vim.api.nvim_set_keymap('n', '<Leader>e', ':NnnPicker<CR>',
--                         {noremap = true, silent = true})

--- NvimTree
-- vim.g.nvim_tree_side = 'right'
-- vim.g.nvim_tree_auto_close = 1
-- vim.g.nvim_tree_quit_on_open = 1
-- vim.g.nvim_tree_follow = 1

-- vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

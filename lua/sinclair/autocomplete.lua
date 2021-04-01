require'compe'.setup({
  enabled = true,
  source = {
    path = true,
    buffer = true,
    nvim_lsp = true,
  },
})

vim.o.completeopt = "menuone,noselect"

local opt = { silent = true, expr = true }
vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", opt)
vim.api.nvim_set_keymap("i", "<CR>", "compe#confirm('<CR>')", opt)
vim.api.nvim_set_keymap("i", "<C-e>", "compe#close('<C-e>')", opt)
vim.api.nvim_set_keymap("i", "<C-f>", "compe#scroll({ 'delta': +4 })", opt)
vim.api.nvim_set_keymap("i", "<C-d>", "compe#confirm({ 'delta': -4 })", opt)

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
  local col = vim.fn.col('.') - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    return true
  else
    return false
  end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  else
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

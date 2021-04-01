require'nvim-treesitter.configs'.setup{
  highlight = {
    enable = true 
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
    persist_queries = false,
  }
}

require('nvim-ts-autotag').setup()

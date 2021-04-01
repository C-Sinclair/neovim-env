local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd [[ packadd packer.nvim ]]

return require'packer'.startup(function()
    use { 'wbthomason/packer.nvim', opt = true }

    -- statusline
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        config = function() require'sinclair/statusline' end,
        -- some optional icons
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- explorer
    use {
        'kyazdani42/nvim-tree.lua', 
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- core lsp
    use 'neovim/nvim-lspconfig'
    use 'tjdevries/lsp_extensions.nvim'
    use 'glepnir/lspsaga.nvim'

    -- completion
    -- use 'nvim-lua/completion-nvim'
    use 'hrsh7th/nvim-compe'

    -- formatting
    use 'sbdchd/neoformat'
    
    -- parsing
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/playground'

    -- debugging
    use 'mfussenegger/nvim-dap'
    use 'nvim-telescope/telescope-dap.nvim'

    -- stats
    use 'wakatime/vim-wakatime'

    -- theme
    use 'liuchengxu/space-vim-dark'
    
    -- comment
    use 'tpope/vim-commentary'

    -- git
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'rbong/vim-flog'

    -- telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        {'nvim-lua/popup.nvim'}, 
        {'nvim-lua/plenary.nvim'},
        {'nvim-telescope/telescope-fzy-native.nvim'}
      }
    }

    -- movement
    use 'chrisbra/improvedft'
    use 'szw/vim-maximizer'

    -- tags & brackets
    use 'alvan/vim-closetag'
    use 'jiangmiao/auto-pairs'

    -- start screen 
    use 'mhinz/vim-startify'

    -- lua
    use 'tjdevries/nlua.nvim'
    use 'euclidianAce/BetterLua.vim'
    use 'tjdevries/manillua.nvim'
    -- use 'bfredl/nvim-luadev'
    
    use 'peitalin/vim-jsx-typescript'

end)

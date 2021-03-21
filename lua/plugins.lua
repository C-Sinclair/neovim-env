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

    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        config = function() require'statusline' end,
        -- some optional icons
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use {
        'kyazdani42/nvim-tree.lua', 
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/completion-nvim'
    use 'tjdevries/lsp_extensions.nvim'

    use 'sbdchd/neoformat'
    
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use 'wakatime/vim-wakatime'

    use 'liuchengxu/space-vim-dark'
    
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        {'nvim-lua/popup.nvim'}, 
        {'nvim-lua/plenary.nvim'},
        {'nvim-telescope/telescope-fzy-native.nvim'}
      }
    }

    use 'chrisbra/improvedft'
    use 'szw/vim-maximizer'
end)

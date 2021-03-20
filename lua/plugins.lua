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
    use 'hrsh7th/nvim-compe'
    
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use 'wakatime/vim-wakatime'

    use 'liuchengxu/space-vim-dark'
    
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
end)

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '
                .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd [[ packadd packer.nvim ]]

return require'packer'.startup(function(use)
    use {'wbthomason/packer.nvim', opt = true}

    -- statusline
    -- use {
    --     'glepnir/galaxyline.nvim',
    --     branch = 'main',
    --     -- your statusline
    --     config = function() require'sinclair/statusline' end,
    --     -- some optional icons
    --     requires = {'kyazdani42/nvim-web-devicons', opt = true}
    -- }
    use {
        "hoob3rt/lualine.nvim",
        requires = {"kyazdani42/nvim-web-devicons", opt = true}
    }

    -- tabs
    use {
        "akinsho/nvim-bufferline.lua",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- explorer
    -- use {
    --     'kyazdani42/nvim-tree.lua',
    --     requires = {'kyazdani42/nvim-web-devicons', opt = true}
    -- }
    -- use 'mcchrish/nnn.vim'
    use 'ms-jpq/chadtree'

    -- core lsp
    use 'neovim/nvim-lspconfig'
    -- use 'kabouzeid/nvim-lspinstall'
    use 'tjdevries/lsp_extensions.nvim'

    use 'RishabhRD/popfix'
    use 'RishabhRD/nvim-lsputils'

    -- use 'glepnir/lspsaga.nvim' -- incompatible with nvim-0.5.1

    -- lsp hooks
    use 'jose-elias-alvarez/null-ls.nvim'

    -- completion
    -- use 'nvim-lua/completion-nvim'
    -- use 'hrsh7th/nvim-cmp'
    -- use 'hrsh7th/cmp-nvim-lsp'
    use 'ms-jpq/coq_nvim'
    use 'ms-jpq/coq.artifacts'

    -- formatting
    -- use 'sbdchd/neoformat'
    -- use "mhartington/formatter.nvim"

    -- parsing
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/playground'
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    -- debugging
    -- use 'mfussenegger/nvim-dap'
    -- use 'nvim-telescope/telescope-dap.nvim'

    -- errors
    use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}

    -- stats
    use 'wakatime/vim-wakatime'

    -- theme
    use 'liuchengxu/space-vim-dark'

    -- comment
    use 'tpope/vim-commentary'
    -- use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- git
    -- use 'tpope/vim-fugitive'
    -- use 'airblade/vim-gitgutter'
    -- use 'rbong/vim-flog'
    use {"lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"}}

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-fzy-native.nvim'}
        }
    }

    -- movement
    -- use 'chrisbra/improvedft'
    -- use 'szw/vim-maximizer'

    -- smooth scroll
    -- use 'C-Sinclair/neoscroll.nvim'

    -- tags & brackets
    -- use 'alvan/vim-closetag'
    use 'jiangmiao/auto-pairs'
    use 'windwp/nvim-ts-autotag'

    -- start screen 
    -- use 'mhinz/vim-startify'
    -- use {
    --   'tweekmonster/startuptime.vim',
    --   opt = true
    -- }
    use {
        "glepnir/dashboard-nvim",
        opt = true,
        cmd = {
            "Dashboard", "DashboardChangeColorscheme", "DashboardFindFile",
            "DashboardFindHistory", "DashboardFindWord", "DashboardJumpMarks",
            "DashboardNewfile"
        }
    }

    -- lua
    use 'tjdevries/nlua.nvim'
    use 'euclidianAce/BetterLua.vim'
    -- use 'tjdevries/manillua.nvim'
    -- use 'bfredl/nvim-luadev'

    -- jsx
    -- use 'peitalin/vim-jsx-typescript'
    use {'maxmellon/vim-jsx-pretty', opt = true}

    -- wildmenu
    use 'gelguy/wilder.nvim'

    -- highlight
    use 'folke/twilight.nvim'

    -- keys
    use {
        'folke/which-key.nvim',
        config = function()
            require'which-key'.setup()
        end
    }

    -- tmux
    -- use 'christoomey/vim-tmux-navigator'

    -- markdown
    use {"ellisonleao/glow.nvim", run = "GlowInstall"}

    -- ascii
    use "jbyuki/venn.nvim"

    -- notes
    -- use {
    --     "vhyrro/neorg",
    --     config = function()
    --         require('neorg').setup {
    --             load = {
    --                 ["core.defaults"] = {}, -- Load all the default modules
    --                 ["core.norg.concealer"] = {}, -- Allows for use of icons
    --                 ["core.norg.dirman"] = { -- Manage your directories with Neorg
    --                     config = {workspaces = {notes = "~/Dropbox/notes"}}
    --                 }
    --             }
    --         }
    --     end,
    --     requires = "nvim-lua/plenary.nvim"
    -- }

    -- todos
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- prisma
    use 'pantharshit00/vim-prisma'

    -- brackets and quotes
    use 'tpope/vim-surround'

    -- ui components
    -- use 'MunifTanjim/nui.nvim'

end)

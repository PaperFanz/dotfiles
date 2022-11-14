--[[

    packer config

]]--

local cmd = vim.cmd
cmd [[packadd packer.nvim]]

local packer = require 'packer'

return packer.startup(function(use)

    -- plugin manager
    use 'wbthomason/packer.nvim'

    -- file explorer
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'

    -- Debugging
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'

    -- autocomplete
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip'
        },
    }
    use 'windwp/nvim-autopairs'

    -- copy over tmux/ssh
    use 'ojroques/vim-oscyank'

    -- finder
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- start page
    use 'mhinz/vim-startify'

    -- colorscheme
    use 'sainnhe/sonokai'
    use 'sainnhe/everforest'

end)


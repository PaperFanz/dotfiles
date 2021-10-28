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

    -- autocomplete
    use 'windwp/nvim-autopairs'

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- colorscheme
    use 'sainnhe/sonokai'

end)


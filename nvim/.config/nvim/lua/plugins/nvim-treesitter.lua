
require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'c', 'cpp', 'lua', 'rust', 'jsonc', 'python', 'verilog'
    }
}

local ft_to_parser = require"nvim-treesitter.parsers".filetype_to_parsername
ft_to_parser.json = "jsonc"


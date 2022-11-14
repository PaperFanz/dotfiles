--[[

    colorscheme config

]]--

local g = vim.g

vim.o.termguicolors = true

-- sonokai
g.sonokai_style = 'atlantis'
g.sonokai_enable_italic = 1
g.sonokai_diagnostic_line_highlight = 1
g.sonokai_transparent_background = 1

-- everforest
vim.o.background = 'dark'
g.everforest_background = 'hard'
g.everforest_better_performance = 1
g.everforest_enable_italic = 1

(function()
    vim.api.nvim_exec(
        [[
        colorscheme everforest
        hi Floaterm             guibg=NONE
        hi FloatermBorder       guibg=NONE      guifg=gray
        hi clear TSError
        ]],
        false
    )
end)("colorscheme");


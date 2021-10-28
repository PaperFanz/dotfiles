--[[

    colorscheme config

]]--

local g = vim.g


g.sonokai_style = 'atlantis'
g.sonokai_enable_italic = 1
g.sonokai_diagnostic_line_highlight = 1
g.sonokai_transparent_background = 1

(function()
    vim.api.nvim_exec(
        [[
        colorscheme sonokai
        hi Floaterm             guibg=NONE
        hi FloatermBorder       guibg=NONE      guifg=gray
        hi clear TSError
        ]],
        false
    )
end)("colorscheme");


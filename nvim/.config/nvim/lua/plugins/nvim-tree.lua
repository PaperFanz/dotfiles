--[[

    file manager config

]]--

local g = vim.g

g.nvim_tree_width_allow_resize  = 1

-- keymaps
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require('nvim-tree').setup{
    respect_buf_cwd = true,
    renderer = {
        highlight_opened_files = "all",
    },
    view = { 
        mappings = {
            list = {
                { key = "v", cb = tree_cb("vsplit") },
                { key = "h", cb = tree_cb("split") },
                { key = "t", cb = tree_cb("tabnew") },
            },
        },
    },
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
}


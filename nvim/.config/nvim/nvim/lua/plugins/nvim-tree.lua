--[[

    file manager config

]]--

local g = vim.g

g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_disable_window_picker = 1
g.nvim_tree_respect_buf_cwd = 1
g.nvim_tree_width_allow_resize  = 1
g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1
}

g.nvim_tree_icons = {
	default = "‣ "
}

-- keymaps
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require('nvim-tree').setup{
    filters = {
        custom = {
            ".git",
        },
    },
    git = {
        ignore = true,
    },
    view = { 
        auto_resize = true,
        mappings = {
            list = {
                { key = "v", cb = tree_cb("vsplit") },
                { key = "h", cb = tree_cb("split") },
                { key = "t", cb = tree_cb("tabnew") },
            },
        },
    },
}


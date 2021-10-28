--[[

    file manager config

]]--

local g = vim.g

g.nvim_tree_ignore = {'.git'}
g.nvim_tree_gitignore = 1

g.nvim_tree_icons = {
	default = "‣ "
}

require('nvim-tree').setup{
    open_on_setup = true,
    view = { auto_resize = true },
}


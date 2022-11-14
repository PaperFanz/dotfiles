--[[

    key mappings

]]--

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

map('n', '<Leader>e', ':NvimTreeToggle<CR>', default_opts)


--[[

    general settings

]]--


local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- qol
o.mouse = 'a'
o.clipboard = 'unnamedplus'
o.hidden = true
o.showmatch = true
o.visualbell = true
o.autoread = true
wo.wrap = false
o.encoding = 'utf-8'

-- search
o.hlsearch = true
o.smartcase = true
o.ignorecase = true
o.incsearch = true

-- tabs
o.autoindent = true
o.smartindent = true
o.cindent = true
o.smarttab = true
o.expandtab = true
o.shiftwidth = 4
o.softtabstop = 4
o.backspace = 'indent,eol,start'

-- visual
o.ruler = true
wo.colorcolumn = '80'
vim.cmd('highlight ColorColumn cterm=bold ctermbg=236 gui=bold')

-- line numbering
o.number = true
o.relativenumber = true
vim.cmd('augroup numbertoggle')
vim.cmd('autocmd!')
vim.cmd('autocmd BufEnter,FocusGained,InsertLeave * :set relativenumber')
vim.cmd('autocmd BufLeave,FocusLost,InsertEnter   * :set norelativenumber')
vim.cmd('autocmd BufLeave,FocusLost,InsertEnter   * :set number')
vim.cmd('augroup end')

-- cursor line
o.cursorline = true
vim.cmd('highlight Cursorline cterm=bold gui=bold')


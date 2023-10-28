---------------------
-- NEOVIM SETTINGS --
---------------------

local opt = vim.opt
local g = vim.g

opt.number = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.autoindent = true
opt.smartindent = true
opt.mouse = 'a'
opt.mousemev = true
opt.bg = 'dark'
opt.termguicolors = true
opt.signcolumn = 'number'
opt.backup = false
opt.writebackup = false

g.mapleader = ' '
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

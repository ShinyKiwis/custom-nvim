local opt = vim.opt
local g = vim.g

opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Disable netrw for nvimtree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers 
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
opt.ruler = false

opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true

g.mapleader = " "

-- Colorscheme 
vim.cmd.colorscheme "everforest"
g.everforest_background = "hard"
opt.background = "dark"

-- Signcolumn
vim.cmd('set signcolumn=yes')


-- **************** Options ***************

-- disabling netrw ( vim's builtin file explorer)
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

vim.o.number = true         -- side bar numbering
vim.o.relativenumber = true -- relative line numbers

-- default tab settings
vim.bo.expandtab   = true
vim.bo.shiftwidth  = 0
vim.bo.softtabstop = 2

-- file specific tab settings
vim.cmd[[autocmd FileType .hs setlocal shiftwidth=2]]

-- colourscheme
require 'nordic' .setup { theme = 'nordic', }
vim.cmd.colorscheme 'nordic'

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

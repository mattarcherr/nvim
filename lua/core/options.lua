
-- **************** Options ***************

-- disabling netrw ( vim's builtin file explorer)
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

vim.o.number = true         -- side bar numbering
vim.o.relativenumber = true -- relative line numbers

-- default tab settings
vim.opt.expandtab   = true
vim.opt.shiftwidth  = 4
vim.opt.softtabstop = 4
vim.opt.tabstop     = 4

-- search settigns
vim.opt.incsearch = true
vim.opt.hlsearch  = false

-- file specific tab settings
vim.cmd[[autocmd FileType .hs setlocal shiftwidth=2]]

-- colourscheme
vim.cmd.colorscheme 'nordic'

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

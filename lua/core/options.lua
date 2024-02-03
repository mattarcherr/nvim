
-- **************** Options ***************

-- disabling netrw ( vim's builtin file explorer)
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

-- buffer options
vim.o.splitright = true
vim.o.splitbelow = true

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

-- WhichKey
vim.o.timeout = true
vim.o.timeoutlen = 1500

-- file specific tab settings
vim.cmd[[autocmd FileType .hs setlocal shiftwidth=2]]

-- colourscheme
vim.cmd.colorscheme 'midnight'

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

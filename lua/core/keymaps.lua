-- set leader key
vim.g.mapleader = " "


-- **************** Bindings ***************
local keymap = vim.api.nvim_set_keymap
local nrm    = { noremap = true }

--     MODE, BIND,      COMMAND,                       OPTIONS

keymap("n", "ZS",       ":w<cr>",                      	nrm)        -- ZS writes file
keymap("n", "SV",       ":source ~/.config/nvim/init.lua<cr>", nrm) -- SV reloads config

-- nvim tree binds
keymap("n", "<S-Tab>",  ":NvimTreeFindFileToggle<cr>", 	nrm) -- Shift-tab toggle explorer

-- commenting binds
keymap("n", "<C-_>",    "gcc",                       {noremap = false})
keymap("v", "<C-_>",    "gcc",                       {noremap = false})

-- tab binds
keymap("n", "<C-n>",    ":tabnew<cr>",                 	nrm) -- Crtl-n opens new tab

-- telescope binds
keymap("n", "<S-F>",    ":cd /home/matt | :Telescope find_files<cr>", nrm) -- Shift-F to open telescope

-- window keybinds
keymap("n", "WN",       ":belowright new<cr>",          nrm) -- WN new window
keymap("n", "WQ",       ":quit<cr>",                   	nrm) -- WQ quit window
keymap("n", "WT",       ":belowright 17sp +terminal<cr>", nrm) -- WT terminal window
keymap("n", "WS",       ":belowright sp<cr>",           nrm) -- WS split window

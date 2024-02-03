vim.g.mapleader = " "


-- **************** Bindings ***************
local keymap = vim.keymap.set
local nrm    = { noremap = true }

--     MODE, BIND,      COMMAND,                       OPTIONS

keymap("n", "ZS",       ":w<cr>",                      	nrm) -- ZS writes file
keymap("n", "SV",       ":so %<cr>",                    nrm) -- SV reloads config

-- nvim tree binds
keymap("n", "<S-Tab>",  ":NvimTreeFindFileToggle<cr>", 	nrm) -- Shift-tab toggle explorer

-- undo tree
keymap("n", "<leader>u",  ":UndotreeToggle<cr>", 	    nrm) -- Shift-tab toggle explorer

-- commenting binds
keymap("n", "<C-_>",    "gcc",            {noremap = false}) -- Comment / Uncomment
keymap("v", "<C-_>",    "gcc",            {noremap = false}) -- Comment / Uncomment

-- buffer binds
keymap("n", "<C-n>|BN",    ":enew<cr>",                 	nrm) -- Crtl-n opens new tab
keymap("n", "BD",    ":bd<cr>",                 	nrm) -- Crtl-n opens new tab

-- telescope binds
keymap("n", "TT",    ":Telescope<cr>",                  nrm) -- T-T telescope from ~
keymap("n", "TF",    ":Telescope find_files<cr>",       nrm) -- T-F telescope from ~
keymap("n", "TB",    ":Telescope buffers<cr>",          nrm) -- T-B to view open buffers
keymap("n", "TS",    function()                              -- T-S enter directory to view
    local input = vim.fn.input("Enter directory: ")
    vim.cmd(string.format("cd %s", input))
    vim.cmd("Telescope find_files")
end)


-- window keybinds
keymap("n", "WN",       ":belowright new<cr>",          nrm)   -- WN new window
keymap("n", "WQ",       ":quit<cr>",                   	nrm)   -- WQ quit window
keymap("n", "WT",       ":belowright 17sp +terminal<cr>", nrm) -- WT terminal window
keymap("n", "WS",       ":belowright sp<cr>",           nrm)   -- WS split window

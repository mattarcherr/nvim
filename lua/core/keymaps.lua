vim.g.mapleader = " "


-- **************** Bindings ***************
local keymap = vim.keymap.set
local nrm    = { noremap = true }

--     MODE, BIND,      COMMAND,                       OPTIONS

keymap("n", "ZS",       ":w<cr>",                      	nrm) -- ZS writes file
keymap("n", "SV",       ":so %<cr>",                    nrm) -- SV reloads config
keymap("n", "<cr>",     "ciw",                          nrm) -- Enter replaces a word 

-- nvim tree binds
keymap("n", "<S-Tab>",  ":NvimTreeFindFileToggle<cr>", 	nrm) -- Shift-tab toggle explorer

-- undo tree
keymap("n", "U",        ":UndotreeToggle<cr>", 	        nrm) -- Shift-tab toggle explorer

-- commenting binds
keymap("n", "<C-_>",    "gcc",            {noremap = false}) -- Comment / Uncomment
keymap("v", "<C-_>",    "gcc",            {noremap = false}) -- Comment / Uncomment

-- buffer binds
keymap("n", "BN",       ":enew<cr>",                    nrm) -- Crtl-n opens new tab
keymap("n", "BQ",       ":bd<cr>",                 	    nrm) -- Crtl-n opens new tab
keymap("n", "<Tab>",    ":bn<cr>",                      nrm) -- Tab for next buffer
keymap("n", "<A-Tab>",  ":bp<cr>",                      nrm) -- Alt-tab for previous buffer

-- telescope binds
keymap("n", "TT",    ":Telescope<cr>",                  nrm) -- T-T telescope from ~
keymap("n", "TF",    ":Telescope find_files<cr>",       nrm) -- T-F telescope from ~
keymap("n", "TB",    ":Telescope buffers<cr>",          nrm) -- T-B to view open buffers
keymap("n", "TR",    ":Telescope resume<cr>",           nrm) -- T-R to resume previous telescope
keymap("n", "TS",    function()                              -- T-S enter directory to view
    local input = vim.fn.input("Enter directory: ")
    require("telescope.builtin").find_files({cwd=input})
end)


-- window keybinds
keymap("n", "WN",       ":new<cr>",                     nrm) -- WN new window
keymap("n", "WQ",       ":bd!<cr>",                   	nrm) -- WQ quit window
keymap("n", "WT",       ":17sp +te<cr>",                nrm) -- WT terminal window
keymap("n", "WS",       ":sp<cr>",                      nrm) -- WS split window
keymap("n", "WF",       ":on<cr>",                      nrm) -- WF focuses window

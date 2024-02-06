-- Always install lazy if not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

local plugins = {
	    -- Colour Scheme
          'dasupradyumna/midnight.nvim',
	    -- Statusline in lua
          'nvim-lualine/lualine.nvim',
        -- which-key
          'folke/which-key.nvim',
        -- Telescope fuzzy finder
        {
           'nvim-telescope/telescope.nvim',
           dependencies = {
               {'nvim-telescope/telescope-file-browser.nvim'},
               {'nvim-lua/plenary.nvim'},
           },
        },
        -- bufferline
        {
            'akinsho/bufferline.nvim',
            version = "*",
            dependencies = 'nvim-tree/nvim-web-devicons'
        },
        -- Tree-sitter
        {
            'nvim-treesitter/nvim-treesitter',
            build = ':TSUpdate'
        },
        -- NvimTree
        {
            'nvim-tree/nvim-tree.lua',
             dependencies = { 'nvim-tree/nvim-web-devicons' },
        },
	    -- LSP 
        {
           'VonHeikemen/lsp-zero.nvim',
             branch = 'v2.x',
             dependencies = {
               -- LSP Support
               {'neovim/nvim-lspconfig'},             -- Required
               {'williamboman/mason.nvim'},           -- Optional
               {'williamboman/mason-lspconfig.nvim'}, -- Optional

               -- Autocompletion
               {'hrsh7th/nvim-cmp'},     -- Required
               {'hrsh7th/cmp-nvim-lsp'}, -- Required
               {'L3MON4D3/LuaSnip'},     -- Required
            },
        },
        --  Utilities
          'numToStr/Comment.nvim',   -- Toggle comment selection 
          'mbbill/undotree',         -- Visualizes the undo history
          'nvimdev/dashboard-nvim',  -- Adds a custom dashboard to nvim startup
}

require("lazy").setup(plugins, {
  install = {
    -- install missing plugins on startup. This doesn't increase startup time.
    missing = true,
  },
  change_detection = {
    -- automatically check for config file changes and reload the ui
    enabled = false,
    notify = true, -- get a notification when changes are found
  },
  debug = false,
})


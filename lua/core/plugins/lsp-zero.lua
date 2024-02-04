local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = {
    -- Confirm item
        ['<C-Space>'] = cmp.mapping.confirm({select = true}),
        ['<Tab>']     = cmp.mapping.select_next_item({ behaviour = cmp.SelectBehavior.Select }),
    },
    formatting = {
        fields = { "menu", "abbr", "kind" },
    },
})


lsp.setup()

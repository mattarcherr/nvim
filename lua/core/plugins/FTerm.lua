require('FTerm').setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

-- Create user commands
vim.api.nvim_create_user_command('FTermToggle', require("FTerm").toggle, { bang = true })

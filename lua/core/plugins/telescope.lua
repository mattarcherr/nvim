require('telescope').setup {
    extensions = {
        file_browser = {
            hidden = true,
        },
    },
}

require("telescope").load_extension "file_browser"

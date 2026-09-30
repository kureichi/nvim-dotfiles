return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        opts = {
            options = {
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "EXPLORER",
                        text_align = "center",
                        separator = false, -- use a vertical separator line
                    },
                },
                diagnostics = 'nvim-lsp',
                separator_style = 'slant',
                hover = {
                    enabled = true,
                    delay = 100,
                    reveal = { 'close' }
                }
            },
        }
    },
    {
        'nvim-mini/mini.bufremove'
    }
}

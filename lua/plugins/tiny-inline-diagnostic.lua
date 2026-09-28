return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
        require("tiny-inline-diagnostic").setup(
            {
                options = {
                    add_messages = {
                        display_count = true,
                    },
                    show_source = {
                        enabled = true,
                    },
                    multilines = {
                        enabled = true,
                        always_show = true,
                    },
                },
            }
        )
        vim.diagnostic.config({ virtual_text = false })
    end,
}

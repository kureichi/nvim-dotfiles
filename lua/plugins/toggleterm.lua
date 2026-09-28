return {
    'akinsho/toggleterm.nvim',
    cmd = {
        "ToggleTerm"
    },
    keys = {
        { "<leader>th", "<cmd>1ToggleTerm direction=horizontal<cr>",            desc = "Toggle Horizontal Terminal" },
        { "<leader>tf", "<cmd>2ToggleTerm direction=float<cr>",                 desc = "Toggle Float Terminal" },
        { "<leader>gg", [[<cmd>3ToggleTerm direction=float cmd="lazygit"<cr>]], desc = "Toggle Float Terminal" },
    },
    config = function()
        require("toggleterm").setup({
            size = 10,
            open_mapping = [[<c-/>]],
        })
    end
}

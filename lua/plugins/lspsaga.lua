return {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function()
        require("lspsaga").setup {
            beacon = {
                enable = true,
                frequency = 12,
            },
            outline = {
                layout = "float",
                max_height = 0.8,
                left_width = 0.3,
            },
            request_timeout = 3000,
        }

        vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<cr>")
        vim.keymap.set("n", "gD", "<cmd>Lspsaga peek_definition<cr>")
    end,
}

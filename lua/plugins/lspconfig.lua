return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "ray-x/lsp_signature.nvim",
        "nvimdev/lspsaga.nvim",
    },
    config = function()
        require("lsp_signature").setup {
            bind = true,
            handler_opts = { border = "rounded" },
            hint_enable = true,
            hint_prefix = "",
        }

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

        local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
        local lspconfig = require("lspconfig")

        lspconfig.clangd.setup {
            capabilities = capabilities,
        }

        vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<cr>")
        vim.keymap.set("n", "gD", "<cmd>Lspsaga peek_definition<cr>")

        vim.cmd("LspStart")
    end,
}

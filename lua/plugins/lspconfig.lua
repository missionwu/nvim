return {
    "neovim/nvim-lspconfig",
    event = { "BufNewFile", "BufReadPost" },
    dependencies = {
        "ray-x/lsp_signature.nvim",
    },
    config = function()
        require("lsp_signature").setup {
            bind = true,
            handler_opts = { border = "rounded" },
            hint_enable = true,
            hint_prefix = "",
        }

        local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
        local lspconfig = require("lspconfig")

        lspconfig.clangd.setup {
            capabilities = capabilities,
        }

        vim.cmd [[LspStart]]
    end,
}

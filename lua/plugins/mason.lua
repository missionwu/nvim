return {
    "williamboman/mason.nvim",
    event = "BufReadPost",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup {
            ui = {
                border = "rounded",
            }
        }

        require("mason-lspconfig").setup {
            ensure_installed = {
                "rust_analyzer",
                "clangd",
            }
        }
    end,
}

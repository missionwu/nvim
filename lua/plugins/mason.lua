return {
    "williamboman/mason.nvim",
    event = { "BufNewFile", "BufReadPost" },
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup {
            ui = { border = "rounded" },
        }

        require("mason-lspconfig").setup {
            ensure_installed = {
                "clangd",
                "rust_analyzer",
            },
        }
    end,
}

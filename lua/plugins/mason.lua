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
                -- "rust_analyzer",
                "clangd",
            }
        }

        -- require("mason-lspconfig").setup_handlers {
        --     ["rust_analyzer"] = function() end,
        -- }
    end,
}

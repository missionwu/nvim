return {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {
                ui = {
                    border = "rounded",
                },
            },
        },
        {
            "mason-org/mason-lspconfig.nvim",
            opts = {
                ensure_installed = {
                    "clangd",
                    "rust_analyzer",
                },
            },
        },
        {
            "ray-x/lsp_signature.nvim",
            opts = {
                bind = true,
                handler_opts = { border = "rounded" },
                hint_enable = true,
                hint_prefix = "",
            },
        }
    },
}

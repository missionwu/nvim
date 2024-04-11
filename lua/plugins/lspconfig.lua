return {
    "neovim/nvim-lspconfig",
    event = { "BufNewFile", "BufReadPost" },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "ray-x/lsp_signature.nvim",
    },
    config = function()
        local servers = {
            "clangd",
            "rust_analyzer",
        }

        require("mason").setup {
            ui = { border = "rounded" },
        }

        require("mason-lspconfig").setup {
            ensure_installed = servers,
        }

        require("lsp_signature").setup {
            bind = true,
            handler_opts = { border = "rounded" },
            hint_enable = true,
            hint_prefix = "",
        }

        local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
        local lspconfig = require("lspconfig")
        for _, name in pairs(servers) do
            local ok, config = pcall(require, "servers." .. name)
            if ok and type(config) == "table" then
                config.capabilities = vim.tbl_deep_extend("force", capabilities, config.capabilities)
                lspconfig[name].setup(config)
            end
        end

        vim.cmd [[LspStart]]
    end,
}

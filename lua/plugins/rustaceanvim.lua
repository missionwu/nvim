vim.g.rustaceanvim = {
    server = {
        default_settings = {
            ["rust-analyzer"] = {
                completion = {
                    hideDeprecated = true,
                },
                inlayHints = {
                    -- implicitDrops = {
                    --     enable = true,
                    -- },
                    reborrowHints = {
                        enable = "always",
                    },
                    lifetimeElisionHints = {
                        enable = "always",
                        useParameterNames = true,
                    },
                    genericParameterHints = {
                        lifetime = { enable = true },
                        type = { enable = true },
                    },
                },
            },
        },
    },
}

return {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
}

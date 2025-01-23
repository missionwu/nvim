vim.g.rustaceanvim = {
    server = {
        default_settings = {
            ["rust-analyzer"] = {
                inlayHints = {
                    genericParameterHints = {
                        lifetime = { enable = true },
                        type = { enable = true },
                    },
                    rangeExclusiveHints = { enable = true },
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

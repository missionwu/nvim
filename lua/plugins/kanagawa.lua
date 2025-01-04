return {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("kanagawa").setup {
            undercurl = false,
            colors = {
                theme = { all = { ui = { bg_gutter = "none" } } }
            },
            overrides = function(colors)
                local theme = colors.theme
                return {
                    NormalFloat = { bg = "none" },
                    FloatBorder = { bg = "none" },
                    FloatTitle = { bg = "none" },
                    NormalDark = { bg = "none" },
                    LazyNormal = { bg = "none" },
                    MasonNormal = { bg = "none" },
                    Pmenu = { fg = theme.ui.shade0, bg = "none" },
                    PmenuSel = { fg = "none", bg = theme.ui.bg_p2 },
                    PmenuSbar = { bg = "none" },
                    PmenuThumb = { bg = "none" },
                }
            end,
        }

        vim.cmd("colorscheme kanagawa")
    end,
}

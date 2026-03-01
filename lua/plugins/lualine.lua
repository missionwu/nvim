return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        options = {
            component_separators = { left = "", right = "" },
        },
        sections = {
            lualine_a = { },
            lualine_b = { },
            lualine_c = {
                {
                    function() return "▊" end,
                    color = { fg = "#51afef" },
                    padding = { left = 0, right = 0 },
                },
                {
                    "filetype",
                    colored = true,
                    icon_only = true,
                    padding = { left = 1, right = 0 },
                },
                {
                    "filename",
                    padding = { left = 0, right = 0 },
                },
            },
            lualine_x = { "%p%%" },
            lualine_y = { "branch" },
            lualine_z = { },
        },
        inactive_sections = {
            lualine_a = { },
            lualine_b = { },
            lualine_c = { "filename" },
            lualine_x = { },
            lualine_y = { },
            lualine_z = { },
        },
        extensions = {
            "quickfix",
            "lazy",
            "neo-tree",
        },
    },
}

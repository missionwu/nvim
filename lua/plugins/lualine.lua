return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        options = {
            disabled_filetype = { "lazy" },
            component_separators = "",
            refresh = {
                statusline = 200,
            },
        },
        sections = {
            lualine_a = { },
            lualine_b = { },
            lualine_c = {
                {
                    function()
                        return "▊"
                    end,
                    color = { fg = "#51afef" },
                    padding = { left = 0, right = 0 },
                },
                {
                    "filetype",
                    colored = true,
                    icon_only = true,
                    icon = { align = "left" },
                    padding = { left = 1, right = 0 },
                },
                {
                    "filename",
                    file_status = true,
                    path = 0,
                    symbols = {
                        modified = "[+]",
                        readonly = "[-]",
                        unnamed  = "[No Name]",
                        newfile  = "[New]",
                    },
                    padding = { left = 0, right = 0 },
                },
            },
            lualine_x = { "%p%%" },
            lualine_y = { "branch", "diagnostics" },
            lualine_z = { },
        },
        inactive_sections = {
            lualine_a = { },
            lualine_b = { "filename" },
            lualine_c = { },
            lualine_x = { },
            lualine_y = { },
            lualine_z = { },
        },
        extensions = {
            "lazy",
            "mason",
            "toggleterm",
            "quickfix",
            "neo-tree",
        },
    }
}

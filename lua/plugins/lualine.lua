return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local filename = {
            "filename",
            file_status = true,
            path = 0,
            symbols = {
                modified = "[+]",
                readonly = "[-]",
                unnamed = "[No Name]",
                newfile = "[New]",
            },
            padding = { left = 0, right = 0 },
        }

        local fileicon = {
            "filetype",
            colored = true,
            icon_only = true,
            icon = { align = "left" },
            padding = { left = 1, right = 0 },
        }

        require("lualine").setup {
            options = {
                icons_enabled = true,
                theme = "auto",
                component_separators = "",
                disabled_filetypes = { "lazy" },
                ignore_focus = { },
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = { },
                lualine_b = { },
                lualine_c = { fileicon, filename },
                lualine_x = { "%p%%" },
                lualine_y = { "branch" },
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
            tabline = { },
            winbar = { },
            inactive_winbar = { },
            extensions = { "neo-tree" },
        }
    end,
}

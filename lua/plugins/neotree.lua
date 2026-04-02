return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    opts = {
        close_if_last_window = true,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = false,
        enable_modified_markers = false,
        filesystem = {
            filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_ignored = false,
                hide_hidden = false,
            },
            follow_current_file = {
                enabled = true,
            },
        },
        default_component_configs = {
            icon = {
                default = "",
            },
            git_status = {
                symbols = {
                    -- Change type
                    added     = "", -- NOTE: you can set any of these to an empty string to not show them
                    deleted   = "",
                    modified  = "",
                    renamed   = "",
                    -- Status type
                    untracked = "",
                    ignored   = "",
                    unstaged  = "",
                    staged    = "",
                    conflict  = "",
                },
            },
        },
    },
}

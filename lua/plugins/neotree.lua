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
        enable_git_status = false,
        enable_diagnostics = false,
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
            group_empty_dirs = true,
        },
    },
}

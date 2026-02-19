return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    opts = {
        close_if_last_window = true,
        popup_border_style = "rounded",
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
    },
}

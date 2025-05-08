return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    opts = {
        filesystem = {
            hijack_netrw_behavior = "disabled",
            filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = false,
            },
        },
    }
}

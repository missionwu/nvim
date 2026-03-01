return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        indent = {
            char = "┆",
            smart_indent_cap = false,
        },
        scope = {
            show_start = false,
            show_end = false,
        },
        exclude = {
            filetypes = {
                "text",
            },
        },
    },
}

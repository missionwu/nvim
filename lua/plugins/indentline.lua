return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufNewFile", "BufReadPost" },
    config = function()
        require("ibl").setup {
            scope = {
                show_start = false,
                show_end = false,
            }
        }
    end,
}

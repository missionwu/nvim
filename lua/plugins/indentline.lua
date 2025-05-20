return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufNewFile", "BufReadPost" },
    config = function()
        require("ibl").setup {
            scope = {
                show_start = false,
                show_end = false,
                injected_languages = true,
                priority = 1000,
            }
        }
    end,
}

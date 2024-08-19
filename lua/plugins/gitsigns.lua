return {
    "lewis6991/gitsigns.nvim",
    event = { "BufNewFile", "BufReadPost" },
    config = function()
        require("gitsigns").setup {
            signs = {
                add = { text = "+" },
                change = { text = "|" },
                delete = { text = "-" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
                untracked = { text = "┆" },
            },
            watch_gitdir = { interval = 1000, follow_files = true },
            current_line_blame = true,
            current_line_blame_opts = { delay = 1000, virtual_text_pos = "eol" },
            sign_priority = 6,
            update_debounce = 100,
            status_formatter = nil,
            word_diff = false,
            diff_opts = { internal = true },
        }
    end
}

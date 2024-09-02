return {
    "saecki/crates.nvim",
    event = "BufReadPost Cargo.toml",
    config = function()
        require("crates").setup {
            completion = {
                cmp = { enabled = true },
                crates = {
                    enabled = true,
                    max_results = 8,
                    min_chars = 3,
                }
            },
            popup = {
                border = "rounded",
            },
        }
    end,
}

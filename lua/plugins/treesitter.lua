return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = {
                "rust",
                "c",
                "cpp",
            },
            auto_install = false,
            highlight = {
                enable = true,
                disable = function(lang, buf)
                    local filesz = 100 * 1024 -- 100KB
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > filesz then
                        return true
                    end
                end,
                additional_vim_regex_highlighting = false,
            },
        }
    end,
}

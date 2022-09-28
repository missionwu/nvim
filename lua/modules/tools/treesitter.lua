vim.api.nvim_command("set foldmethod=expr")
vim.api.nvim_command("set foldexpr=nvim_treesitter#foldexpr()")

require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "c",
        "cpp",
        "rust",
        "lua",
        "fish",
    },
    highlight = { enable = true, disable = { "vim" } },
})

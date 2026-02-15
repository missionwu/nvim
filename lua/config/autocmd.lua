vim.api.nvim_create_autocmd("FileType", {
    pattern = { "rust", "c", "cpp" },
    callback = function()
        vim.treesitter.start()
    end,
})

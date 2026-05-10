-- treesitter
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "rust", "cpp" },
    callback = function()
        vim.treesitter.start()
    end,
})

-- https://github.com/arnamak/stay-centered.nvim
vim.api.nvim_create_autocmd({ "CursorMovedI", "InsertEnter" }, {
    group = vim.api.nvim_create_augroup("StayCentered", { clear = true }),
    callback = function()
        if vim.bo.filetype == "neo-tree" then
            return
        end

        local line = vim.api.nvim_win_get_cursor(0)[1]
        if vim.b.last_line == nil or line ~= vim.b.last_line then
            local column = vim.fn.getcurpos()[3]
            vim.cmd("norm! zz")
            vim.fn.cursor({ line, column })
        end
    end,
})

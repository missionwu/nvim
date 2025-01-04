return {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    dependencies = {
        "rhysd/accelerated-jk",
    },
    config = function()
        require("better_escape").setup {
            timeout = vim.o.timeoutlen,
            default_mappings = true,
        }
    end,
}

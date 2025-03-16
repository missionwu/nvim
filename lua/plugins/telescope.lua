return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    event = "VeryLazy",
    config = function()
        require("telescope").setup {
            defaults = {
                mappings = {
                    i = {
                        ["<Tab>"] = "move_selection_next",
                        ["<S-Tab>"] = "move_selection_previous",
                    }
                }
            },
            pickers = {
                find_files = {
                    theme = "dropdown",
                },
            }
        }

        -- keymap
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>fj", builtin.jumplist, { desc = "Telescope jumplist" })
        vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Telescope oldfiles" })
        vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Telescope marks" })

        vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope lsp references" })
        vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope diagnostics" })
    end,
}

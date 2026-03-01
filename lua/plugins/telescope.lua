return {
    "nvim-telescope/telescope.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = {
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local builtin = require("telescope.builtin")

        telescope.setup {
            defaults  = {
                mappings = {
                    i = {
                        ["<Tab>"] = actions.move_selection_next,
                        ["<S-Tab>"] = actions.move_selection_previous,
                    },
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
            },
        }

        telescope.load_extension("fzf")

        -- keymap
        vim.keymap.set("n", "<leader>ff", builtin.find_files)
        vim.keymap.set("n", "<leader>fg", builtin.live_grep)
        vim.keymap.set("n", "<leader>fb", builtin.buffers)
        vim.keymap.set("n", "<leader>fo", builtin.oldfiles)
        vim.keymap.set("n", "<leader>fj", builtin.jumplist)
        vim.keymap.set("n", "<leader>fc", builtin.current_buffer_fuzzy_find)
    end,
}

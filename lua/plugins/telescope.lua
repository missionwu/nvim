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
    keys = function()
        local builtin = require("telescope.builtin")
        return {
            { "<leader>ff", builtin.find_files                  },
            { "<leader>fo", builtin.oldfiles                    },
            { "<leader>fg", builtin.live_grep                   },
            { "<leader>fb", builtin.buffers                     },
            { "<leader>fr", builtin.registers                   },
            { "<leader>fm", builtin.marks                       },
            { "<leader>fj", builtin.jumplist                    },
            { "<leader>fh", builtin.search_history              },
            { "<leader>fz", builtin.current_buffer_fuzzy_find   },
        }
    end,
    config = function()
        local telescope = require("telescope")
        telescope.setup {
            defaults = {
                mappings = {
                    i = {
                        ["<Tab>"] = "move_selection_next",
                        ["<S-Tab>"] = "move_selection_previous",
                    },
                },
            },
        }
        telescope.load_extension("fzf")
    end,
}

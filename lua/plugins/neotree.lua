return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup {
            close_if_last_window = false,
            popup_border_style = "rounded",
            enable_git_status = true,
            enable_diagnostic = false,
            open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
            sort_case_insensitive = false,
            sort_function = nil,
            default_component_configs = {
                container = {
                    enable_character_fade = true,
                },
                indent = {
                    indent_size = 2,
                    padding = 1,
                    with_marks = true,
                    indent_marker = "│",
                    last_indent_marker = "└",
                    highlight = "NeoTreeIndentMarker",
                    with_expanders = nil,
                    expander_collapsed = "",
                    expander_expanded = "",
                    expander_highlight = "NeoTreeExpander",
                },
                icon = {
                    folder_closed = "",
                    folder_open = "",
                    folder_empty = "",
                    default = "",
                    highlight = "NeoTreeFileIcon",
                },
                modified = {
                    symbol = "[+]",
                    highlight = "NeoTreeModified",
                },
                name = {
                    trailing_slash = false,
                    use_git_status_colors = true,
                    highlight = "NeoTreeFileName",
                },
                git_status = {
                    symbols = {
                        added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
                        modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
                        deleted   = "✖",-- this can only be used in the git_status source
                        renamed   = "󰁕",-- this can only be used in the git_status source
                        -- Status type
                        untracked = "",
                        ignored   = "",
                        unstaged  = "󰄱",
                        staged    = "",
                        conflict  = "",
                    }
                },
                file_size = {
                    enable = true,
                    required_width = 64,
                },
                type = {
                    enable = true,
                    required_width = 122,
                },
                last_modified = {
                    enabled = true,
                    required_width = 88,
                },
                created = {
                    enabled = true,
                    required_width = 110,
                },
                symlink_target = {
                    enabled = false,
                },
            },
            commands = { },
            window = {
                position = "left",
                width = 40,
                mapping_options = {
                    noremap = true,
                    nowait = true,
                },
                mappings = {
                    ["<cr>"] = "open",
                    ["<esc>"] = "cancel",
                    ["S"] = "open_split",
                    ["s"] = "open_vsplit",
                    ["w"] = "open_with_window_picker",
                    ["z"] = "close_all_nodes",
                    ["a"] = { "add", config = { show_path = "none" } },
                    ["A"] = "add_directory",
                    ["d"] = "delete",
                    ["r"] = "rename",
                    ["q"] = "close_window",
                    ["R"] = "refresh",
                    ["?"] = "show_help",
                    ["i"] = "show_file_details",
                }
            },
            nesting_rules = { },
            filesystem = {
                filtered_items = {
                    visible = false,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = false,
                    hide_by_name = { },
                    hide_bt_pattern = { },
                    always_show = { },
                    never_show = { },
                    never_show_by_pattern = { },
                },
                follow_current_file = {
                    enabled = false,
                    leave_dirs_open = false,
                },
                group_empty_dirs = false,
                hijack_netrw_behavior = "open_default",
                use_libuv_file_watcher = false,
                window = {
                    mappings = {
                        ["<bs>"] = "navigate_up",
                        ["."] = "set_root",
                        ["H"] = "toggle_hidden",
                        ["/"] = "fuzzy_finder",
                        ["D"] = "fuzzy_finder_directory",
                        ["#"] = "fuzzy_sorter",
                        ["f"] = "filter_on_submit",
                        ["<C-x>"] = "clear_filter",
                        ["[g"] = "prev_git_modified",
                        ["]g"] = "next_git_modified",
                        ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
                        ["oc"] = { "order_by_created", nowait = false },
                        ["od"] = { "order_by_diagnostics", nowait = false },
                        ["og"] = { "order_by_git_status", nowait = false },
                        ["om"] = { "order_by_modified", nowait = false },
                        ["on"] = { "order_by_name", nowait = false },
                        ["os"] = { "order_by_size", nowait = false },
                        ["ot"] = { "order_by_type", nowait = false },
                    },
                    fuzzy_finder_mappings = {
                        ["<tab>"] = "move_cursor_down",
                        ["<S-tab>"] = "move_cursor_up",
                    },
                },
                commands = { },
            },
            buffers = {
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false,
                },
                group_empty_dirs = true,
                show_unloaded = true,
                window = {
                    mappings = {
                        ["bd"] = "buffer_delete",
                        ["<bs>"] = "navigate_up",
                        ["."] = "set_root",
                        ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
                        ["oc"] = { "order_by_created", nowait = false },
                        ["od"] = { "order_by_diagnostics", nowait = false },
                        ["om"] = { "order_by_modified", nowait = false },
                        ["on"] = { "order_by_name", nowait = false },
                        ["os"] = { "order_by_size", nowait = false },
                        ["ot"] = { "order_by_type", nowait = false },
                    }
                },
            },
            git_status = {
                window = {
                    position = "float",
                    mappings = {
                        ["A"]  = "git_add_all",
                        ["gu"] = "git_unstage_file",
                        ["ga"] = "git_add_file",
                        ["gr"] = "git_revert_file",
                        ["gc"] = "git_commit",
                        ["gp"] = "git_push",
                        ["gg"] = "git_commit_and_push",
                        ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
                        ["oc"] = { "order_by_created", nowait = false },
                        ["od"] = { "order_by_diagnostics", nowait = false },
                        ["om"] = { "order_by_modified", nowait = false },
                        ["on"] = { "order_by_name", nowait = false },
                        ["os"] = { "order_by_size", nowait = false },
                        ["ot"] = { "order_by_type", nowait = false },
                    }
                },
            },
        }
    end,
}

return {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "onsails/lspkind.nvim",
    },
    config = function()
        local cmp = require("cmp")

        cmp.setup {
            preselect = cmp.PreselectMode.None,
            mapping = cmp.mapping.preset.insert {
                ["<CR>"] = cmp.mapping {
                    i = function(fallback)
                        if cmp.visible() and cmp.get_active_entry() then
                            cmp.confirm { behavior = cmp.ConfirmBehavior.Replace, select = false }
                        else
                            fallback()
                        end
                    end,
                },
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            },
            sources = cmp.config.sources {
                {
                    name = "nvim_lsp",
                    entry_filter = function(entry, ctx)
                        return cmp.lsp.CompletionItemKind.Snippet ~= entry:get_kind()
                    end,
                },
                { name = "buffer" },
            },
            window = {
                completion = {
                    border = "rounded",
                    scrollbar = false,
                    winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
                    col_offset = 3,
                    side_padding = 0,
                },
                documentation = {
                    border = "rounded",
                    scrollbar = false,
                },
            },
            formatting = {
                fields = { "icon", "abbr", "menu", "kind" },
                format = function(entry, item)
                    local kind = require("lspkind").cmp_format({
                        mode = "symbol_text",
                        maxwidth = 50,
                        ellipsis_cahr = "...",
                    })(entry, item)
                    kind.icon = " " .. (kind.icon or "")
                    kind.kind = "(" .. (kind.kind or "") .. ")"
                    return kind
                end,
            }
        }

        -- cmdline
        cmp.setup.cmdline({ "/", "?" }, {
            mapping = cmp.mapping.preset.cmdline {
                ["<C-n>"] = cmp.config.disable,
                ["<C-p>"] = cmp.config.disable,
            },
            sources = {
                { name = "buffer" },
            },
        })
        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline {
                ["<C-n>"] = cmp.config.disable,
                ["<C-p>"] = cmp.config.disable,
            },
            sources = {
                { name = "path" },
                { name = "cmdline" },
            },
        })

        -- autopairs
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        cmp.event:on(
            "confirm_done",
            cmp_autopairs.on_confirm_done()
        )
    end,
}

return {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "onsails/lspkind.nvim",
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        cmp.setup {
            preselect = cmp.PreselectMode.None,
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert {
                ["<CR>"] = cmp.mapping.confirm { selected = false },
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            },
            sources = cmp.config.sources {
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
            },
            window = {
                completion = {
                    border = "rounded",
                    scrollbar = false,
                    winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
                    col_offset = -3,
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
                        ellipsis_char = "..."
                    })(entry, item)
                    kind.icon = " " .. (kind.icon or "") .. " "
                    kind.kind = "    (" .. (kind.kind or "") .. ")"
                    return kind
                end,
            },
        }

        -- cmdline
        cmp.setup.cmdline({ "/", "?" }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            },
        })
        cmp.setup.cmdline({ ":" }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "path" },
                { name = "cmdline" },
            },
        })

        -- autopairs
        local ok, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
        if ok then
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end
    end,
}

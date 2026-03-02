vim.lsp.enable("rust_analyzer")
vim.lsp.enable("clangd")

-- keymaps
local bind = require("config.keymaps").bind
bind("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
bind("n", "gh", "<cmd>lua vim.lsp.buf.hover({ border = 'rounded' })<cr>")
bind("n", "gn", "<cmd>lua vim.diagnostic.jump({ count = 1 })<cr>")
bind("n", "gp", "<cmd>lua vim.diagnostic.jump({ count = -1 })<cr>")

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        -- enable inlay hint
        if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
            vim.lsp.inlay_hint.enable(true)
        end

        -- enable diagnostic messages inline
        vim.diagnostic.enable(true)
        vim.diagnostic.config {
            virtual_text = true,
        }
    end,
})

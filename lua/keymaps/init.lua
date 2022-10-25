local function keybind(mode, lhs, rhs, opts)
    local opts = opts or { noremap = true, silent = true }
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

vim.g.mapleader = ";"
keybind("n", ";", "", { noremap = true })
keybind("x", ";", "", { noremap = true })

-- indent
keybind("n", ">", ">>")
keybind("n", "<", "<<")
keybind("x", "<", "<gv")
keybind("x", ">", ">gv")

-- moving cursor between windows
keybind("n", "<C-h>", "<C-w>h")
keybind("n", "<C-j>", "<C-w>j")
keybind("n", "<C-k>", "<C-w>k")
keybind("n", "<C-l>", "<C-w>l")

keybind("n", "<leader>s", "<cmd>w<cr>")
keybind("n", "<leader>w", "<cmd>Bd<cr>")
keybind("n", "<leader>t", "<cmd>NvimTreeToggle<cr>")

local leader = " "

vim.g.mapleader = leader
vim.keymap.set("n", leader, "", { noremap = true })
vim.keymap.set("x", leader, "", { noremap = true })

local function keybind(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts or { silent = true, noremap = true })
end

-- escape visual mode
keybind("x", "q", "<Esc>")

-- indent
keybind("n", ">", ">>")
keybind("n", "<", "<<")
keybind("x", ">", ">gv")
keybind("x", "<", "<gv")

-- moving cursor between window
keybind("n", "<C-h>", "<C-w>h")
keybind("n", "<C-j>", "<C-w>j")
keybind("n", "<C-k>", "<C-w>k")
keybind("n", "<C-l>", "<C-w>l")

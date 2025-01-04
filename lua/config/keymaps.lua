local leader = " "

vim.g.mapleader = leader
vim.keymap.set("n", leader, "", { noremap = true })
vim.keymap.set("x", leader, "", { noremap = true })

local function bind(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts or { silent = true, noremap = true })
end

-- escape from visual mode
bind("x", "q", "<Esc>")

-- indent
bind("n", ">", ">>")
bind("n", "<", "<<")
bind("x", ">", ">gv")
bind("x", "<", "<gv")

-- moving cursor between window
bind("n", "<C-h>", "<C-w>h")
bind("n", "<C-j>", "<C-w>j")
bind("n", "<C-k>", "<C-w>k")
bind("n", "<C-l>", "<C-w>l")

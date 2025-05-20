local leader = " "

local function bind(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts or { noremap = true, silent = true })
end

vim.g.mapleader = leader
bind("n", leader, "")
bind("x", leader, "")


-- escape visual mode
bind("x", "q", "<Esc>")

-- moving cursor between windows
bind("n", "<C-h>", "<C-w>h")
bind("n", "<C-j>", "<C-w>j")
bind("n", "<C-k>", "<C-w>k")
bind("n", "<C-l>", "<C-w>l")

-- indent
bind("n", ">", ">>")
bind("n", "<", "<<")
bind("x", ">", ">gv")
bind("x", "<", "<gv")

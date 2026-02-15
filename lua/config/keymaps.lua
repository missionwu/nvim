local leader = " "

local function bind(mode, key, op, opts)
    local options = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
    vim.keymap.set(mode, key, op, options)
end

vim.g.mapleader = leader
bind("n", leader, "")
bind("x", leader, "")

-- escape
bind("x", "q", "<esc>")

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

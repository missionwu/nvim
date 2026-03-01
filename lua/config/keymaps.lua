local function bind(mode, lhs, rhs, opts)
    local options = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
    vim.keymap.set(mode, lhs, rhs, options)
end

local leader = " "
vim.g.mapleader = leader
bind("n", leader, "")
bind("x", leader, "")

-- escape visual mode
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

-- cmdline
bind("c", "<C-a>", "<home>",    { silent = false })
bind("c", "<C-e>", "<end>",     { silent = false })
bind("c", "<C-f>", "<right>",   { silent = false })
bind("c", "<C-b>", "<left>",    { silent = false })
bind("c", "<C-n>", "<down>",    { silent = false })
bind("c", "<C-p>", "<up>",      { silent = false })
bind("c", "<C-h>", "<C-left>",  { silent = false })
bind("c", "<C-l>", "<C-right>", { silent = false })


-- export bind
return { bind = bind }

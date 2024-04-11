local leader = " "

vim.g.mapleader = leader
vim.keymap.set("n", leader, "", { noremap = true })
vim.keymap.set("x", leader, "", { noremap = true })

local function keybind(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts or { silent = true, noremap = true })
end

-- escape visual mode
keybind("x", "q", "<esc>")

-- indent
keybind("n", ">", ">>")
keybind("n", "<", "<<")
keybind("x", ">", ">gv")
keybind("x", "<", "<gv")

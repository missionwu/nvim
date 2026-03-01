vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.wrap = false
vim.o.mouse = ""

vim.o.number = true
vim.o.cursorline = true
vim.o.colorcolumn = "80"
vim.o.signcolumn = "yes"
vim.o.laststatus = 3
vim.o.shortmess = "ltToOCFI"

vim.o.list = true
vim.o.listchars = "tab:» ,trail:■"
vim.o.fillchars = "eob: ,"

vim.o.backup = false
vim.o.swapfile = false
vim.o.undofile = false

vim.o.splitright = false
vim.o.splitbelow = true
vim.o.visualbell = false
vim.o.errorbells = false

vim.opt.clipboard:append("unnamedplus")

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

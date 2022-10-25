-- tab
vim.opt.tabstop     = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth  = 4
vim.opt.expandtab   = true
vim.opt.autoindent  = true
vim.opt.smarttab    = true

-- line number
vim.opt.number     = true
vim.opt.signcolumn = "yes"

-- text
vim.opt.wrap           = false
vim.opt.cursorline     = true
vim.opt.colorcolumn    = "81"
vim.opt.foldenable     = true
vim.opt.foldlevelstart = 99

-- list
vim.opt.list      = true
vim.opt.listchars = "tab:»■,trail:■,"
vim.opt.fillchars = "vert:▋,eob: ,"

-- search
vim.opt.ignorecase = true
vim.opt.smartcase  = true
vim.opt.infercase  = true
vim.opt.incsearch  = true
vim.opt.wrapscan   = false

-- backup
vim.opt.backup      = false
vim.opt.writebackup = false
vim.opt.swapfile    = false
vim.opt.undofile    = false

-- other
vim.opt.hidden      = true
vim.opt.magic       = true
vim.opt.mouse       = ""
vim.opt.splitbelow  = true
vim.opt.splitright  = true
vim.opt.errorbells  = false
vim.opt.visualbell  = false
vim.opt.scrolloff   = 5
vim.opt.virtualedit = "block"
vim.opt.completeopt = "menuone,noselect"
vim.opt.timeout     = true
vim.opt.ttimeout    = true
vim.opt.timeoutlen  = 500
vim.opt.ttimeoutlen = 0
vim.opt.updatetime  = 100
vim.opt.redrawtime  = 1500

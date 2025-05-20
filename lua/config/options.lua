local options = {
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    autoindent = true,
    expandtab = true,

    mouse = "",
    wrap = false,
    number = true,
    signcolumn = "yes",
    cursorline = true,
    colorcolumn = "80",
    shortmess = "ltToOCFI",
    laststatus = 3,

    list = true,
    listchars = "tab:»»,trail:■",
    fillchars = "eob: ,",

    splitright = false,
    splitbelow = true,
    visualbell = false,
    errorbells = false,

    backup = false,
    swapfile = false,
    undofile = false,

    timeout = true,
    ttimeout = true,
    timeoutlen = 300,
    ttimeoutlen = 0,
    updatetime = 200,
    redrawtime = 1500,
}

for name, value in pairs(options) do
    vim.opt[name] = value
end

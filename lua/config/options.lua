local options = {
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    autoindent = true,

    mouse = "",
    wrap = false,
    number = true,
    signcolumn = "yes",
    cursorline = true,
    colorcolumn = "80",

    list = true,
    listchars = "tab:»»,trail:■",
    fillchars = "eob: ,",

    splitright = false,
    splitbelow = true,
    visualbell = false,
    errorbells = false,

    timeout = true,
    ttimeout = true,
    timeoutlen = 300,
    ttimeoutlen = 0,
    redrawtime = 1500,
    updatetime = 200,

    backup = false,
    swapfile = false,
    undofile = false,
}

for name, value in pairs(options) do
    vim.opt[name] = value
end

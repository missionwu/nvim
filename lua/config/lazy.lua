local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.cmd("!git clone --depth=1 --branch=stable https://github.com/folke/lazy.nvim.git " .. lazypath)
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
    defaults = { lazy = true },
    spec = {
        { import = "plugins" },
    },
    lockfile = vim.fn.stdpath("data") .. "/lazy-lock.json",
    install = { colorscheme = { "kanagawa" } },
    ui = { border = "rounded" },
    change_detection = { enable = false, notify = false },
}

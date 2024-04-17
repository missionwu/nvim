local function disable_distribution_plugins()
    vim.g.did_install_default_menus = 1
    vim.g.did_install_syntax_menus = 1
    -- vim.g.loaded_netrw = 1
    -- vim.g.loaded_netrwPlugin = 1
    vim.g.netrw_liststyle = 3
    vim.g.loaded_2html_plugin = 1
    vim.g.loaded_gzip = 1
    vim.g.loaded_tar = 1
    vim.g.loaded_tarPlugin = 1
    vim.g.loaded_vimball = 1
    vim.g.loaded_vimballPlugin = 1
    vim.g.loaded_zip = 1
    vim.g.loaded_zipPlugin = 1
end

disable_distribution_plugins()

require("config.options")
require("config.keymaps")
require("config.lazy")

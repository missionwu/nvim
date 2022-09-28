local data_dir = vim.fn.stdpath("data")
local config_dir = vim.fn.stdpath("config")

local packer_dir = data_dir.."/site/pack/packer/start/packer.nvim"
local packer_url = "https://github.com/wbthomason/packer.nvim"
if vim.fn.empty(vim.fn.glob(packer_dir)) > 0 then
    local cmd = string.format("!git clone --depth 1 %s %s", packer_url, packer_dir)
    vim.api.nvim_command(cmd)
end

local _ok, packer = pcall(require, "packer")
if not _ok then
    return
end

packer.init({
    git = { clone_timeout = 100 },
    max_jobs = 20,
    display = { open_fn = function()
        return require("packer.util").float({ border = "rounded" })
    end },
})

local modules_dir = config_dir.."/lua/modules"
local plugs = {}
local files = vim.split(vim.fn.globpath(modules_dir, "*/plugins.lua"), "\n")
for _, file in ipairs(files) do
    file = file:sub(#modules_dir - 6, -1)
    file = file:sub(0, #file - 4)
    local module = require(file)
    for _, plug in ipairs(module) do
        plugs[#plugs + 1] = plug
    end
end

packer.startup(function(use)
    -- Packer can manage itself.
    use("wbthomason/packer.nvim")

    for _, plug in ipairs(plugs) do
        use(plug)
    end
end)

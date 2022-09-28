local function load_cfg(file)
    return string.format([[require("modules.editor.%s")]], file)
end

return {
    -- colorscheme
    { "navarasu/onedark.nvim", config = [[require("onedark").load()]] },
    -- file explorer
    {
        "kyazdani42/nvim-tree.lua",
        cmd = "NvimTreeToggle",
        config = load_cfg("nvimtree"),
    },
    -- buffer line
    { "akinsho/bufferline.nvim", config = load_cfg("bufferline") },
    -- status line
    { "glepnir/galaxyline.nvim", config = load_cfg("galaxyline") },
    -- indent line
    { "lukas-reineke/indent-blankline.nvim" },
    -- git signs
    { "lewis6991/gitsigns.nvim", config = load_cfg("gitsigns") },
}

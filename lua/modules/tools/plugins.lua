local function load_cfg(file)
    return string.format([[require("modules.tools.%s")]], file)
end

return {
    -- file icons
    { "kyazdani42/nvim-web-devicons" },
    -- lua module implements common functions
    { "nvim-lua/plenary.nvim" },
    -- replacement for the included filetype.vim
    { "nathom/filetype.nvim" },
    -- map escape
    { "jdhao/better-escape.vim", event = "InsertEnter" },
    -- accelerates j/k mappings
    { "rhysd/accelerated-jk" },
    -- disable search highlight when you are done
    { "romainl/vim-cool" },
    -- delete buffer without messing up windows layout
    { "famiu/bufdelete.nvim" },

    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = load_cfg("treesitter"),
    },
    { "nvim-treesitter/nvim-treesitter-textobjects", after = "nvim-treesitter" },
    { "p00f/nvim-ts-rainbow", after = "nvim-treesitter" },
    { "JoosepAlviste/nvim-ts-context-commentstring", after = "nvim-treesitter" },

    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        config = load_cfg("telescope"),
    },
}

local function load_cfg(file)
    return string.format([[require("modules.completion.%s")]], file)
end

return {
    -- auto pairs
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = load_cfg("autopairs"),
    },
}

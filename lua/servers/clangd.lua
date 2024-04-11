local util = require("lspconfig.util")

local function switch_source_header(bufnr)
    bufnr = util.validate_bufnr(bufnr)
    local client = util.get_active_client_by_name(bufnr, "clangd")
    local params = { uri = vim.uri_from_bufnr(bufnr) }
    if client then
        client.request("textDocument/switchSourceHeader", params, function(err, result)
            if err then
                error(tostring(err))
            end
            if not result then
                vim.notify [[Corresponding file cannot be determined]]
                return
            end
            vim.api.nvim_command("edit " .. vim.uri_to_fname(result))
        end, bufnr)
    else
        vim.notify [[method textDocument/switchSourceHeader is not supported by any servers active on the current buffer]]
    end
end

local root_files = {
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "configure.ac",  -- AutoTools
}

local default_capabilities = {
    textDocument = {
        completion = {
            editsNearCursor = true,
        },
    },
    offsetEncoding = { "utf-8", "utf-16" },
}

return {
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
    single_file_support = true,
    root_dir = function(fname)
        return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname)
    end,
    capabilities = default_capabilities,
    commands = {
        ClangdSwitchSourceHeader = {
            function()
                switch_source_header(0)
            end,
            description = "Switch between source/header",
        },
    }
}

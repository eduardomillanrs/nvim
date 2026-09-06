local function get_root_markers()
    local root_markers1 = {
        ".emmyrc.json",
        ".luarc.json",
        ".luarc.jsonc",
    }
    local root_markers2 = {
        ".luacheckrc",
        ".stylua.toml",
        "stylua.toml",
        "selene.toml",
        "selene.yml",
    }

    if vim.fn.has("nvim-0.11.3") == 1 then
        return { root_markers1, root_markers2, { ".git" } }
    end

    return vim.list_extend(vim.list_extend(root_markers1, root_markers2), { ".git" })
end

---@type vim.lsp.Config
return {
    cmd          = { "lua-language-server" },
    filetypes    = { "lua" },
    root_markers = get_root_markers(),
    settings     = {
        Lua = {
            codeLens = { enable = true },
            hint     = { enable = true, semicolon = "Disable" },
        },
    },
}

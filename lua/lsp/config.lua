local function get_servers()
    local servers   = {}
    local blacklist = {}
    local path      = vim.fs.joinpath(vim.fn.stdpath("config"), "lsp")
    local fs        = vim.uv.fs_scandir(path)

    if fs then
        while true do
            local name = vim.uv.fs_scandir_next(fs)

            if not name then
                break
            end

            name = name:match("(.+)%..+$") or name

            if not vim.tbl_contains(blacklist, name) then
                table.insert(servers, name)
            end
        end
    end

    return servers
end

local function get_capabilities()
    local has_blink, blink     = pcall(require, "blink.cmp")

    local default_capabilities = {
        workspace = {
            fileOperations = {
                didRename  = true,
                willRename = true,
            },
        },
    }

    if has_blink then
        return blink.get_lsp_capabilities(default_capabilities)
    end

    return default_capabilities
end

vim.lsp.enable(get_servers())

vim.lsp.config("*", { capabilities = get_capabilities() })

vim.diagnostic.config({
    virtual_text     = true,
    underline        = false,
    signs            = false,
    update_in_insert = true,
    severity_sort    = true,
})

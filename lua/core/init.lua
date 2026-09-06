if vim.g.vscode then
    require("core.vscode")
    return
end

require("core.options")
require("core.keymaps")
require("core.autocmds")
require("core.lazy")

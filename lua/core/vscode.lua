local vscode = require("vscode")

local function format_by_yourself()
    vscode.notify("Do it by yourself bro!")
end

vim.opt.guicursor = ""
vim.opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function ()
        vim.hl.on_yank()
    end
})

-- Better buffer's selection
vim.keymap.set("n", "yae", "ggyG", { desc = "Copy all file contents", noremap = true })
vim.keymap.set("n", "cae", "ggcG", { desc = "Replace all file contents", noremap = true })
vim.keymap.set("n", "dae", "ggdG", { desc = "Delete all file contents", noremap = true })
vim.keymap.set("n", "vae", "ggVG", { desc = "Select all file contents", noremap = true })

-- Code Navigation & LSP
vim.keymap.set("n", "gd", function () vscode.action("editor.action.revealDefinition") end)
vim.keymap.set("n", "gi", function () vscode.action("editor.action.goToImplementation") end)
vim.keymap.set("n", "gx", function () vscode.action("editor.action.goToReferences") end)
vim.keymap.set("n", "gr", function () vscode.action("editor.action.rename") end)
vim.keymap.set("n", "gs", function () vscode.action("editor.action.triggerParameterHints") end)
vim.keymap.set("n", "g.", function () vscode.action("editor.action.quickFix") end)
vim.keymap.set("i", "<A-CR>", function () vscode.action("editor.action.triggerSuggest") end)

-- Formatting (Normal & Visual Mode)
vim.keymap.set("n", "g=", function () vscode.action("editor.action.formatDocument") end)
-- vim.keymap.set("n", "g=", format_by_yourself)
vim.keymap.set("x", "g=", function () vscode.action("editor.action.formatSelection") end)
-- vim.keymap.set("x", "g=", format_by_yourself)

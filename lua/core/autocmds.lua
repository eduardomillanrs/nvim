local group = vim.api.nvim_create_augroup("nvim-core", { clear = true })

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    desc     = "Highlight when yanking (copying) text",
    group    = group,
    callback = function ()
        vim.hl.on_yank()
    end,
})

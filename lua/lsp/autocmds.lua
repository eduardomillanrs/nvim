vim.api.nvim_create_autocmd("LspAttach", {
    desc     = "Setup LSP on attach",
    group    = vim.api.nvim_create_augroup("nvim-lsp", { clear = true }),
    callback = function (args)
        local bufnr = args.buf

        -- Completion
        vim.api.nvim_set_option_value("omnifunc", "v:lua.vim.lsp.omnifunc", { buf = bufnr })

        -- Keymaps
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP definitions", buffer = bufnr })
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "LSP implementations", buffer = bufnr })
        vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { desc = "LSP type definitions", buffer = bufnr })
        vim.keymap.set("n", "gx", vim.lsp.buf.references, { desc = "LSP references", buffer = bufnr })
        vim.keymap.set("n", "gr", vim.lsp.buf.rename, { desc = "LSP rename", buffer = bufnr })
        vim.keymap.set("n", "gh", vim.lsp.buf.hover, { desc = "LSP hover", buffer = bufnr })
        vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, { desc = "LSP signature help", buffer = bufnr })
        vim.keymap.set("n", "g.", vim.lsp.buf.code_action, { desc = "LSP code action", buffer = bufnr })

        -- vim.keymap.set("n", "gH", vim.diagnostic.open_float, { desc = "LSP line diagnostic", buffer = bufnr })
    end,
})

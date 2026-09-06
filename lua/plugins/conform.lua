return {
    "stevearc/conform.nvim",
    cmd  = "ConformInfo",
    keys = {
        {
            "g=",
            function ()
                require("conform").format()
            end,
            mode = { "n" },
            desc = "Format buffer",
        },
    },
    opts = {
        default_format_opts = {
            lsp_format = "fallback",
        },
        formatters_by_ft = {
            css             = { "prettier", lsp_format = "never" },
            html            = { "prettier", lsp_format = "never" },
            htmlangular     = { "prettier", lsp_format = "never" },
            javascript      = { "prettier", lsp_format = "never" },
            javascriptreact = { "prettier", lsp_format = "never" },
            json            = { "prettier", lsp_format = "never" },
            jsonc           = { "prettier", lsp_format = "never" },
            scss            = { "prettier", lsp_format = "never" },
            typescript      = { "prettier", lsp_format = "never" },
            typescriptreact = { "prettier", lsp_format = "never" },

            php             = { "pint", lsp_format = "never" },
        },
    },
    init = function ()
        vim.opt.formatexpr = "v:lua.require('conform').formatexpr()"
    end,
}

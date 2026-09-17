return {
    "ej-shafran/compile-mode.nvim",
    enabled      = false,
    version      = "^5.0.0",
    dependencies = { "m00qek/baleia.nvim" },
    init         = function ()
        ---@module "compile-mode"
        ---@type CompileModeOpts
        vim.g.compile_mode = {
            baleia_setup = true,
            bang_expansion = true,

        }
    end,
}

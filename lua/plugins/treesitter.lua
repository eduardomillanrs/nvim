return {
    "VonHeikemen/ts-enable.nvim",
    dependencies = {
        {
            "nvim-treesitter/nvim-treesitter",
            lazy  = false,
            build = ":TSUpdate"
        }
    },
    lazy         = false,
    opts         = {
        auto_init    = true,
        auto_install = true,
        highlights   = true,
    },
}

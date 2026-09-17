return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy     = false,
    keys     = {
        { "<C-f>", function () Snacks.picker.files() end, desc = "Find Files" },
        { "<C-s>", function () Snacks.picker.grep() end,  desc = "Grep" },
    },
    opts     = {
        picker = {
            enabled   = true,
            ui_select = false,
            layout    = {
                preset  = "ivy",
                preview = false,
            },
            win       = {
                input = {
                    keys = {
                        ["<Esc>"] = { "close", mode = { "n", "i" } },
                    },
                }
            },
        },
    },
}

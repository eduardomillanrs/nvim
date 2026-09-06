return {
    "ibhagwan/fzf-lua",
    keys = {
        { "<C-f>", function () require("fzf-lua").files() end,     desc = "Open fzf files" },
        { "<C-g>", function () require("fzf-lua").live_grep() end, desc = "Open fzf livegrep" },
        { "<C-h>", function () require("fzf-lua").helptags() end,  desc = "Open fzf neovim help" },
        { "<C-m>", function () require("fzf-lua").manpages() end,  desc = "Open fzf man" },
    },
    opts = {
        winopts    = {
            split       = "belowright new",
            title_flags = false,
            preview     = {
                hidden = true,
            },
        },
        fzf_opts   = {
            ["--cycle"] = true,
        },
        fzf_colors = true,
        hls        = {
            title = "StatusLine",
        },
        files      = {
            -- prompt    = "Search file",
            formatter = "path.filename_first",
        },
    },
    init = function ()
        vim.api.nvim_set_hl(0, "fzf1", { link = "StatusLine" })
        vim.api.nvim_set_hl(0, "fzf2", { link = "StatusLine" })
        vim.api.nvim_set_hl(0, "fzf3", { link = "StatusLine" })
    end,
}

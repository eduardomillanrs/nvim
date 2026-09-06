return {
    -- {
    --     "duarteocarmo/cursor-themes",
    --     lazy     = false,
    --     priority = 1000,
    --     init     = function ()
    --         if vim.o.background == "dark" then
    --             vim.cmd.colorscheme("cursor-dark")
    --         else
    --             vim.cmd.colorscheme("cursor-light")
    --         end
    --     end,
    -- },
    {
        dir      = "~/Projects/cursor-theme.nvim",
        lazy     = false,
        priority = 1000,
        init     = function ()
            vim.cmd.colorscheme("cursor")
        end,
    },
}

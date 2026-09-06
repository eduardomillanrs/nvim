-- Window resize
vim.keymap.set("n", "<A-k>", "<CMD>resize -2<CR>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<A-j>", "<CMD>resize +2<CR>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<A-h>", "<CMD>vertical resize -2<CR>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<A-l>", "<CMD>vertical resize +2<CR>", { desc = "Increase Window Width" })

-- Better buffer's selection
vim.keymap.set("n", "yae", "ggyG", { desc = "Copy all file contents", noremap = true })
vim.keymap.set("n", "cae", "ggcG", { desc = "Replace all file contents", noremap = true })
vim.keymap.set("n", "dae", "ggdG", { desc = "Delete all file contents", noremap = true })
vim.keymap.set("n", "vae", "ggVG", { desc = "Select all file contents", noremap = true })

-- Escape insert mode on terminal
-- vim.keymap.set("t", "<C-\\><Esc>", "<C-\\><C-n>", { desc = "Escape insert mode on terminal", noremap = true })

-- Open netrw in the parent directory
-- vim.keymap.set("n", "-", function ()
--     vim.cmd("Ex " .. vim.fn.expand("%:h"))
-- end, { desc = "Open netrw in the parent directory", noremap = true })

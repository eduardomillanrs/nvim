vim.opt.autoindent    = true
vim.opt.clipboard     = "unnamedplus"
vim.opt.completeopt   = { "menu", "menuone", "noselect" }
vim.opt.expandtab     = true
vim.opt.exrc          = true
vim.opt.foldlevel     = 99
vim.opt.foldmethod    = "expr"
-- vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.formatoptions = "jcroqlnt"
vim.opt.grepprg       = "rg --vimgrep"
vim.opt.guicursor     = ""
vim.opt.isfname:append("@-@")
vim.opt.iskeyword:append("-")
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.path:append("**")
vim.opt.shiftwidth    = 4
vim.opt.signcolumn    = "yes"
vim.opt.smartindent   = true
vim.opt.softtabstop   = 4
vim.opt.splitbelow    = true
vim.opt.splitright    = true
vim.opt.tabstop       = 4
vim.opt.termguicolors = true
vim.opt.undofile      = true
vim.opt.updatetime    = 250
vim.opt.wildmode      = "longest:full,full"
vim.opt.winborder     = "rounded"
vim.opt.wrap          = false
vim.opt.writebackup   = false

vim.g.mapleader = " "

-- relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabulation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- always leave 8 lines between cursor and window edge when scrolling
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- disable autocommenting on new line insertion
-- vim.opt_local.formatoptions:remove({'r', 'o'})
vim.cmd('autocmd BufEnter * set formatoptions-=ro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=ro')

-- Set the spacebar as the leader key
vim.g.mapleader = " "

-- Enable line numbers and set them to relative
vim.opt.nu = true                 -- Always show absolute line number for the current line
vim.opt.relativenumber = true     -- Show relative line numbers for all other lines

-- Tabulation settings
vim.opt.tabstop = 2               -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 2           -- Number of spaces that a <Tab> counts for while editing
vim.opt.shiftwidth = 2            -- Size of an indentation
vim.opt.expandtab = true          -- Convert tabs to spaces
vim.opt.smartindent = true        -- Automatically insert appropriate amount of indentation

-- Disable line wrapping
vim.opt.wrap = false

-- Disable swap files and backups, enable persistent undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Directory to store undo history
vim.opt.undofile = true                               -- Maintain undo history between sessions

-- Search settings
vim.opt.hlsearch = false  -- Do not highlight search matches
vim.opt.incsearch = true  -- Show search matches as you type

-- Use true colors in the terminal
vim.opt.termguicolors = true

-- Keep 8 lines visible above/below the cursor when scrolling
vim.opt.scrolloff = 8

-- Always show the sign column (e.g., for Git signs, linter warnings, etc.)
vim.opt.signcolumn = "yes"

-- Append "@-@" to 'isfname' to allow "@" in file names
vim.opt.isfname:append("@-@")

-- Reduce the delay before swap/backup operations (ms)
vim.opt.updatetime = 50

-- Highlight the 80th column for better code style visibility
vim.opt.colorcolumn = "80"

-- Disable automatic commenting on new lines
-- vim.opt_local.formatoptions:remove({'r', 'o'})
vim.cmd('autocmd BufEnter * set formatoptions-=ro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=ro')

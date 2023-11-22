local opt = vim.opt

opt.shortmess:append("sI")
vim.g.mapleader = " "
-- vim.g.transparency = 0.5

opt.showmode = false
opt.ruler = false

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Tabs & Indents
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Line Wrapping
opt.wrap = false

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Cursor Line
opt.cursorline = true

opt.scrolloff = 8

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split
opt.splitright = true
opt.splitbelow = true

-- iclude "-" as a word
opt.iskeyword:append("-")

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.opt.undofile = true

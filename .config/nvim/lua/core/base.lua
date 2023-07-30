local opt = vim.opt

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Colors
opt.termguicolors = true
opt.background = "dark"

-- Split Windows
opt.splitright = true
opt.splitbelow = true

-- Clipboard
opt.clipboard:append("unnamedplus")

opt.iskeyword:append("-")

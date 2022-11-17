local set = vim.opt
-- Tab Settings
set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
set.autoindent = true
set.smartindent = true

-- Search settings
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

-- Overriding windows default split settings
set.splitbelow = true
set.splitright = true
set.wrap = true
set.scrolloff = 5

-- Extra settings
set.fileencoding = 'utf-8'
set.termguicolors = true
set.number = true
set.ruler = true
set.wildmenu = true
set.cursorline = true
set.showmatch = true
set.hidden = true

set.relativenumber = true
-- FixCursorHold
vim.g.cursorhole_updatetime = 100

-- Nerd Tree
vim.g.NerdTreeShowHidden = 0
vim.g.NerdTreeMinimalUI = 1
vim.g.NerdTreeStatusline = ''

-- Deoplete

-- Hexokinase
-- vim.g.Hexokinase_highlighters='background'


-- Indent Settings
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

-- Spell Check Options

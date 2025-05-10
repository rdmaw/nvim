local opt = vim.opt

-- Standards
vim.scriptencoding = 'utf-8'
opt.termguicolors = true
opt.title = true
opt.clipboard = 'unnamedplus'

-- Mouse and cursor
opt.mouse = ''
opt.guicursor = 'n-v-i-c:block-nCursor'
opt.cursorline = true

-- Numbers and scrolling
opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.wrap = false
opt.scrolloff = 10
opt.sidescrolloff = 30

-- Tabs
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true

-- Windows
opt.inccommand = 'split'
opt.splitright = true
opt.splitbelow = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.wildignore:append({ '*/node_modules/*' })

-- File
opt.swapfile = false

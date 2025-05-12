local opt = vim.opt

-- Standards
vim.scripte = 'utf-8'
opt.tgc = true
opt.title = true
opt.clipboard = 'unnamedplus'

-- Mouse and cursor
opt.mouse = ''
opt.gcr = 'n-v-i-c:block-nCursor'
opt.cul = true

-- Numbers and scrolling
opt.nu = true
opt.rnu = true
opt.scl = 'yes'
opt.wrap = false
opt.so = 10
opt.siso = 30

-- Indentation
opt.ts = 2
opt.sts = 2
opt.sw = 2
opt.et = true

-- Windows
opt.icm = 'split'
opt.spr = true
opt.sb = true

-- Search
opt.ic = true
opt.scs = true
opt.wig:append({ '*/node_modules/*' })

-- File
opt.swf = false

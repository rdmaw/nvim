require("config.lazy")
local opt = vim.opt
local map = vim.keymap.set

-- Options
vim.scriptencoding = "utf-8"
opt.termguicolors = true
opt.guicursor = "n-v-i-c:block-nCursor"
opt.title = true
opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smarttab = true
opt.clipboard = "unnamedplus"
opt.expandtab = true
opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = "split"
opt.splitbelow = true
opt.splitright = true
opt.splitkeep = "cursor"
opt.mouse = ""
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.swapfile = false
opt.backspace = { "start", "eol", "indent" }
opt.path:append({ "**" })
opt.wildignore:append({ "*/node_modules/*" })

-- Keymaps
vim.g.mapleader = " "

map("n", "<A-v>", "<C-v>", { noremap = true, silent = true, desc = "Enter visual block mode" })
map("i", "jj", "<ESC>", { desc = "ESC with jj" })
map("n", "+", "<C-a>", { desc = "Increment number" })
map("n", "-", "<C-x>", { desc = "Decrement number" })
map("n", "<C-a>", "gg<S-v>G", { noremap = true, desc = "Select all" })
map("n", "<M-->", ":split<CR>", { desc = "Split window below" })
map("n", "<M-\\>", ":vsplit<CR>", { desc = "Split window to the right" })
map("n", "<M-h>", ":wincmd h<CR>", { desc = "Move to left window" })
map("n", "<M-k>", ":wincmd k<CR>", { desc = "Move to upper window" })
map("n", "<M-j>", ":wincmd j<CR>", { desc = "Move to lower window" })
map("n", "<M-l>", ":wincmd l<CR>", { desc = "Move to right window" })
map("n", "<M-,>", "<c-w>4<", { desc = "Resize window to the left" })
map("n", "<M-.>", "<c-w>4>", { desc = "Resize window to the right" })
map("n", "<M-t>", "<C-W>+", { desc = "Resize window taller" })
map("n", "<M-s>", "<C-W>-", { desc = "Resize window shorter" })
map("n", "<C-d>", "<C-d>zz", { noremap = true, desc = "Center cursor on Ctrl d" })
map("n", "<C-u>", "<C-u>zz", { noremap = true, desc = "Center cursor on Ctrl u" })
map("n", "<leader>x", ":.lua<CR>", { silent = true, desc = "Source a single line" })
map("v", "<leader>x", ":lua<CR>", { silent = true, desc = "Source selection" })
map("n", "<leader><leader>x", "<cmd>source %<CR>", { silent = true, desc = "Source entire file" })
map("n", "<left>", "<cmd>echo 'Use h to move!'<CR>", { desc = "Use h to move!" })
map("n", "<right>", "<cmd>echo 'Use l to move!'<CR>", { desc = "Use l to move!" })
map("n", "<up>", "<cmd>echo 'Use k to move!'<CR>", { desc = "Use k to move!" })
map("n", "<down>", "<cmd>echo 'Use j to move!'<CR>", { desc = "Use j to move!" })

--Autocommands
-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

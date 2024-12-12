require("config.lazy")

-- Options
vim.scriptencoding = "utf-8"
vim.opt.termguicolors = true
vim.opt.guicursor = "n-v-i-c:block-nCursor"
vim.opt.title = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smarttab = true
vim.opt.clipboard = "unnamedplus"
vim.opt.expandtab = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.swapfile = false
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })

-- Keymaps
vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<ESC>", { desc = "ESC with jj" })
vim.keymap.set("n", "+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement number" })
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })
vim.keymap.set("n", "<M-->", ":split<CR>", { desc = "Split window below" })
vim.keymap.set("n", "<M-\\>", ":vsplit<CR>", { desc = "Split window to the right" })
vim.keymap.set("n", "<M-h>", ":wincmd h<CR>", { desc = "Move to left window" })
vim.keymap.set("n", "<M-k>", ":wincmd k<CR>", { desc = "Move to upper window" })
vim.keymap.set("n", "<M-j>", ":wincmd j<CR>", { desc = "Move to lower window" })
vim.keymap.set("n", "<M-l>", ":wincmd l<CR>", { desc = "Move to right window" })
vim.keymap.set("n", "<M-,>", "<c-w>4<", { desc = "Resize window to the left" })
vim.keymap.set("n", "<M-.>", "<c-w>4>", { desc = "Resize window to the right" })
vim.keymap.set("n", "<M-t>", "<C-W>+", { desc = "Resize window taller" })
vim.keymap.set("n", "<M-s>", "<C-W>-", { desc = "Resize window shorter" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center cursor on Ctrl d" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center cursor on Ctrl u" })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "Source a single line" })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "Source selection" })
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Source entire file" })
vim.keymap.set("n", "<left>", "<cmd>echo 'Use h to move!'<CR>", { desc = "Use h to move!" })
vim.keymap.set("n", "<right>", "<cmd>echo 'Use l to move!'<CR>", { desc = "Use l to move!" })
vim.keymap.set("n", "<up>", "<cmd>echo 'Use k to move!'<CR>", { desc = "Use k to move!" })
vim.keymap.set("n", "<down>", "<cmd>echo 'Use j to move!'<CR>", { desc = "Use j to move!" })
-- vim.keymap.set("n", "<C-j>", function()
-- 	vim.diagnostic.goto_next()
-- end, { desc = "Move to next diagnostic" })

--Autocommands
-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

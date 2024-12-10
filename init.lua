require("config.lazy")

-- Configure options
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true -- remove case sensitive
vim.opt.smartcase = true -- case sensitive, if specific
vim.opt.wrap = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8

-- Keymaps
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>x", ":.lua<CR>") -- source a single line
vim.keymap.set("v", "<leader>x", ":lua<CR>") -- source selection
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>") -- source entire file

--Autocommands
-- Highlight yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
  vim.highlight.on_yank()
end,
})

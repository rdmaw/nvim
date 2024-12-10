require("config.lazy")

-- Configure options
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Keymaps
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>x", ":.lua<CR>") -- source a single line
vim.keymap.set("v", "<leader>x", ":lua<CR>") -- source selection
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>") -- source entire file

-- Highlight yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
  vim.highlight.on_yank()
end,
})

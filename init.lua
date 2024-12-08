require("config.lazy")

-- Highlight yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Keymaps
local map = vim.keymap.set
local opts = {noremap = true, silent = true}

vim.keymap.set("n", "<space>x", ":.lua<CR>") -- source a single line
vim.keymap.set("v", "<space>x", ":lua<CR>") -- source selection
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>") -- source entire file

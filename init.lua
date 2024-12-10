require("config.lazy")

-- Options
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.termguicolors = true
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
vim.opt.cmdheight = 0
vim.opt.backspace = {"start", "eol", "indent"}
vim.opt.path:append({"**"})
vim.opt.wildignore:append({"*/node_modules/*"})

-- Keymaps
vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<ESC>", { desc = "ESC with jj" })
vim.keymap.set("n", "+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement number" })
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })
vim.keymap.set("n", "sb", ":split<Return>", { desc = "Split window below" })
vim.keymap.set("n", "sr", ":vsplit<Return>", { desc = "Split window to the right" })
vim.keymap.set("n", "sh", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "sk", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "sj", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "sl", "<C-w>l", { desc = "Move to right window" })
-- TODO Fix window resizing
-- vim.keymap.set("n", "<C-w><left>", "<C-w><", { desc = "Resize window to left" })
-- vim.keymap.set("n", "<C-w><left>", "<C-w><", { desc = "Resize window to left" })
-- vim.keymap.set("n", "<C-w><left>", "<C-w><", { desc = "Resize window to left" })
-- vim.keymap.set("n", "<C-w><left>", "<C-w><", { desc = "Resize window to left" })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "Source a single line" })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "Source selection" })
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>",{ desc = "Source entire file" })
vim.keymap.set("n", "<left>", "<cmd>echo 'Use h to move!'<CR>", { desc = "Use h to move!" })
vim.keymap.set("n", "<right>", "<cmd>echo 'Use l to move!'<CR>", { desc = "Use l to move!" })
vim.keymap.set("n", "<up>", "<cmd>echo 'Use k to move!'<CR>", { desc = "Use k to move!" })
vim.keymap.set("n", "<down>", "<cmd>echo 'Use j to move!'<CR>", { desc = "Use j to move!" })
vim.keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, { desc = "Move to next diagnostic" })


--Autocommands
-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
  vim.highlight.on_yank()
end,
})

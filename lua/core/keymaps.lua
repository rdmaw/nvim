vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.keymap.set

-- Map Ctrl+v to Ctrl+Alt+v for clipboard workaround :(
map("n", "<A-v>", "<C-v>", { noremap = true, silent = true, desc = "Enter visual block mode" })

-- jj to normal mode and C+e to select all
map("i", "jj", "<ESC>", { desc = "ESC with jj" })
map("n", "<C-e>", "gg<S-v>G", { noremap = true, desc = "Select all" })

-- Windows
map("n", "<leader>|", ":vsplit<CR>", { desc = "Split window to the right" })
map("n", "<leader>-", ":split<CR>", { desc = "Split window below" })
map("n", "<M-,>", "<c-w>4<", { desc = "Resize window to the left" })
map("n", "<M-.>", "<c-w>4>", { desc = "Resize window to the right" })
map("n", "<M-'>", "<C-W>+", { desc = "Resize window taller" })
map("n", "<M-;>", "<C-W>-", { desc = "Resize window shorter" })

-- Center cursor on C-d + C-u
map("n", "<C-d>", "<C-d>zz", { noremap = true, desc = "Center cursor on Ctrl d" })
map("n", "<C-u>", "<C-u>zz", { noremap = true, desc = "Center cursor on Ctrl u" })

-- Disable arrow keys
map("n", "<left>", "<cmd>echo 'Use h to move!'<CR>", { desc = "Use h to move!" })
map("n", "<right>", "<cmd>echo 'Use l to move!'<CR>", { desc = "Use l to move!" })
map("n", "<up>", "<cmd>echo 'Use k to move!'<CR>", { desc = "Use k to move!" })
map("n", "<down>", "<cmd>echo 'Use j to move!'<CR>", { desc = "Use j to move!" })

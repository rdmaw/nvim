vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- General
map('n', '<leader>L', ':Lazy<CR>', { desc = 'Open Lazy' })

-- Visual block
map('n', '<A-v>', '<C-v>', { noremap = true, silent = true, desc = 'Enter visual block mode' })

-- ESC and select all
map('i', 'jj', '<ESC>', { desc = 'ESC with jj' })
map('n', '<C-e>', 'gg<S-v>G', { noremap = true, desc = 'Select all' })

-- Center cursor on C-d + C-u
map('n', '<C-d>', '<C-d>zz', opts)
map('n', '<C-u>', '<C-u>zz', opts)

-- Moving lines
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move lines downward when visually selecting' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move lines upward when visually selecting' })

-- Search
map('n', 'n', 'nzzzv')
map('n', 'N', 'nzzzv')
map('n', '<ESC>', ':nohl<CR>', { desc = 'Clear search highlights' })

-- Split windows
map('n', '<leader>|', ':vsplit<CR>', { desc = 'Split window to the right', silent = true })
map('n', '<leader>-', ':split<CR>', { desc = 'Split window below', silent = true })

-- Resize windows
map('n', '<M-,>', '<c-w>4<', { desc = 'Resize window to the left', silent = true })
map('n', '<M-.>', '<c-w>4>', { desc = 'Resize window to the right', silent = true })
map('n', '<M-;>', '<C-W>-', { desc = 'Resize window shorter', silent = true })
map('n', "<M-'>", '<C-W>+', { desc = "Resize window taller", silent = true })

-- Disable arrow keys
for _, mode in ipairs({ 'n', 'i', 'v' }) do
  for _, key in ipairs({ '<up>', '<down>', '<left>', '<right>' }) do
    map(mode, key, '<nop>', { silent = true })
  end
end

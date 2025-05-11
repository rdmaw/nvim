vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local map = vim.keymap.set

-- Map Ctrl+v to Ctrl+Alt+v for clipboard workaround :(
map('n', '<A-v>', '<C-v>', { noremap = true, silent = true, desc = 'Enter visual block mode' })

-- jj to normal mode and C+e to select all
map('i', 'jj', '<ESC>', { desc = 'ESC with jj' })
map('n', '<C-e>', 'gg<S-v>G', { noremap = true, desc = 'Select all' })

-- Split windows
map('n', '<leader>|', ':vsplit<CR>', { desc = 'Split window to the right', silent = true })
map('n', '<leader>-', ':split<CR>', { desc = 'Split window below', silent = true })

-- Resize windows
map('n', '<M-,>', '<c-w>4<', { desc = 'Resize window to the left', silent = true })
map('n', '<M-.>', '<c-w>4>', { desc = 'Resize window to the right', silent = true })
map('n', '<M-;>', '<C-W>-', { desc = 'Resize window shorter', silent = true })
map('n', "<M-'>", '<C-W>+', { desc = "Resize window taller", silent = true })

-- Center cursor on C-d + C-u
map('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
map('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

-- Disable arrow keys
for _, mode in ipairs({ 'n', 'i', 'v' }) do
  for _, key in ipairs({ '<up>', '<down>', '<left>', '<right>' }) do
    map(mode, key, '<nop>', { silent = true })
  end
end

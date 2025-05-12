local map = vim.keymap.set

-- Silence all keymaps
---@diagnostic disable-next-line: duplicate-set-field
vim.keymap.set = function(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  return map(mode, lhs, rhs, opts)
end

-- Disable arrow keys
for _, mode in ipairs({ 'n', 'i', 'v' }) do
  for _, key in ipairs({ '<up>', '<down>', '<left>', '<right>' }) do
    map(mode, key, '<nop>')
  end
end

-- General
map('n', '<leader>L', ':Lazy<CR>', { desc = 'Open Lazy' })
map('n', '<C-c>', 'ciw', { desc = 'Change entire word' })
map('n', '<A-v>', '<C-v>', { desc = 'Enter visual block mode' })
map('i', 'jj', '<ESC>', { desc = 'Escape insert mode with jj' })
map('n', '<C-e>', 'gg<S-v>G', { desc = 'Visually select all' })

-- Center cursor
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'nzzzv')

-- Moving lines
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move lines downward when visually selecting' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move lines upward when visually selecting' })

-- Split windows
map('n', '<leader>|', ':vsplit<CR>', { desc = 'Split window to the right' })
map('n', '<leader>-', ':split<CR>', { desc = 'Split window below' })

-- Resize windows
map('n', '<M-,>', '<c-w>4<', { desc = 'Resize window to the left' })
map('n', '<M-.>', '<c-w>4>', { desc = 'Resize window to the right' })
map('n', '<M-;>', '<C-W>-', { desc = 'Resize window shorter' })
map('n', "<M-'>", '<C-W>+', { desc = "Resize window taller" })


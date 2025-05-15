local map = vim.keymap.set

-- Silence keymaps
---@diagnostic disable-next-line: duplicate-set-field
vim.keymap.set = function(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  return map(mode, lhs, rhs, opts)
end

-- Disable arrow keys
for _, mode in ipairs({'n', 'i', 'v'}) do
  for _, key in ipairs({'<up>', '<down>', '<left>', '<right>'}) do
    map(mode, key, '<nop>')
  end
end

-- General
map('n', '<leader>L', ':Lazy<CR>', {desc = 'Open Lazy'})
map('n', '<C-c>', 'ciw', {desc = 'Change word'})
map('i', 'jj', '<ESC>', {desc= 'Escape insert mode with jj'})
map('n', '<C-e>', 'gg<S-v>G', {desc = 'Visually select all'})
-- map('t', '<Esc><Esc>', '<C-\\><C-n>', {desc = 'Exit :term'})

-- Center cursor
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'nzzzv')

-- Moving lines
map('v', 'J', ":m '>+1<CR>gv=gv", {desc = 'Move selected lines downward'})
map('v', 'K', ":m '<-2<CR>gv=gv", {desc = 'Move selected lines upward'})

-- Split windows
map('n', '<leader>|', ':vsplit<CR>', {desc = 'Split window to the right'})
map('n', '<leader>-', ':split<CR>', {desc = 'Split window below'})

-- Resize windows
map('n', '<M-h>', '<C-W>4>', {desc = 'Resize to left'})
map('n', '<M-j>', '<C-W>-', {desc = 'Resize downward'})
map('n', "<M-k>", '<C-W>+', {desc = "Resize upward"})
map('n', '<M-l>', '<C-W>4<', {desc = 'Resize to right'})

-- Buffers
map('n', 'L', vim.cmd.bnext, {desc='Goto next buffer'})
map('n', 'H', vim.cmd.bprev, {desc='Goto prev buffer'})

-- Diagnostic
map('n', '<leader>q', vim.diagnostic.setloclist)

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'bash', 'css', 'diff', 'gitignore', 'html', 'javascript', 'json', 'lua', 'markdown', 'markdown_inline', 'regex', 'vim', 'xml' },
    highlight = { enable = true },
    indent = { enable = true }
  }
}

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {'bash', 'css', 'diff', 'gitignore', 'html', 'javascript', 'json', 'lua', 'markdown', 'markdown_inline', 'regex', 'toml', 'vim', 'xml'},
    highlight = {enable = true},
    indent = {enabled = true},
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<CR>',
        node_incremental = '<CR>',
        scope_incremental = false,
        node_decremental = '<BS>',
      }
    }
  }
}

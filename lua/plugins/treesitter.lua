return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {'bash', 'css', 'diff', 'gitignore', 'html', 'javascript', 'json', 'lua', 'markdown', 'markdown_inline', 'regex', 'toml', 'vim', 'xml'},
      highlight = {enable = true},
      indent = {enable = true},
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          node_incremental = "<CR>",
          scope_incremental = false,
          node_decremental = "<BS>",
        }
      }
    })
  end
}

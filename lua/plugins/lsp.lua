return {
  {'mason-org/mason.nvim', opts = {}},
  {'mason-org/mason-lspconfig.nvim', event = {'BufReadPre', 'BufNewFile'}, dependencies = {'neovim/nvim-lspconfig'}, opts = {}},
  {'folke/lazydev.nvim', ft = 'lua', opts = {library = {{path = "${3rd}/luv/library", words = {"vim%.uv"}}}}},
  {
    'saghen/blink.cmp',
    event = 'InsertEnter',
    dependencies = {'rafamadriz/friendly-snippets'},
    version = '1.*',
    opts = {
      completion = {documentation = {auto_show = true, auto_show_delay_ms = 0}},
      sources = {
        default = {'lazydev', 'lsp', 'path', 'snippets', 'buffer'},
        providers = {
          lazydev = {name = 'LazyDev', module = 'lazydev.integrations.blink', score_offset = 100}
        }
      }
    }
  }
}

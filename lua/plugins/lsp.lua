return {
	{'mason-org/mason.nvim', event = 'VeryLazy', opts = {}},
	{'mason-org/mason-lspconfig.nvim', dependencies = {'neovim/nvim-lspconfig'}, event = {'BufReadPre', 'BufNewFile'}, opts = {}},
  {'folke/lazydev.nvim', ft = 'lua', opts = {library = {{path = "${3rd}/luv/library", words = {"vim%.uv"}}}}},
  {
    'saghen/blink.cmp',
    dependencies = {'rafamadriz/friendly-snippets'},
    version = '1.*',
    event = 'InsertEnter',
    opts = {
      completion = {documentation = {auto_show = true}},
      sources = {
        default = {'lazydev', 'lsp', 'path', 'snippets', 'buffer'},
        providers = {
          lazydev = {name = 'LazyDev', module = 'lazydev.integrations.blink', score_offset = 100},
        }
      }
    }
  }
}

return {
  {'windwp/nvim-ts-autotag', event = { 'BufReadPre', 'BufNewFile' }, opts = {}},
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function ()
      require('nvim-autopairs').setup({
        check_ts = true,
        ts_config = {
          lua = {'string'},
          javascript = {'template_string'},
        },
      })
    end,
  }
}

return {
  {
    "saghen/blink.cmp",
    dependencies = "rafamadriz/friendly-snippets",

    version = "v0.*",

    opts = {

      completion = {
        menu = {
          auto_show = function(ctx)
            return ctx.mode ~= "cmdline"
          end,
        },
      },

      keymap = { preset = "default" },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "normal",
      },

      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },

      signature = { enabled = true },
    },
    opts_extend = { "sources.default" },
  },
}

return {
  'ibhagwan/fzf-lua',
  lazy = false,
  enabled = true,
  keys = {
    {'<leader>fd', function() FzfLua.files() end, desc = 'Find files'},
    {'<leader>fn', function() FzfLua.files({cwd=vim.fn.stdpath('config')}) end, desc = 'Find config'},
    {'<leader>fb', function() FzfLua.buffers() end, desc = 'Find buffers'},
    {'<leader>fr', function() FzfLua.oldfiles() end, desc = 'Find recent'},
    {'<leader>/', function() FzfLua.live_grep_native() end, desc = 'Live grep'},
    {'<leader>fk', function() FzfLua.keymaps() end, desc = 'Find keymaps'},
    {'<leader>fh', function() FzfLua.helptags() end, desc = 'Find help'},
    {'<leader>fq', function() FzfLua.diagnostics_document() end, desc = 'Find diagnostic'},
    {'<leader>fc', function() FzfLua.lsp_code_actions() end, desc = 'Find code actions'},
    {'<leader>fz', function() FzfLua.zoxide() end, desc = 'Find zoxide'},
    {'<leader><leader>', function() FzfLua.builtin() end, desc = 'Find builtin'},
  },
  config = function()
    require('fzf-lua').setup({
      defaults = {
        git_icons = false,
        file_icons = false,
        color_icons = false
      },
      winopts = {preview = {hidden = true}},
      oldfiles = {include_current_session = true},
      -- files = {git_icons = true}
    })
    require('fzf-lua').register_ui_select()
  end
}

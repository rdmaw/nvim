return {
  'ibhagwan/fzf-lua',
  enabled = true,
  keys = {
    -- Files
    {'<leader>fd', function() FzfLua.files() end, desc = 'Find files'},
    {'<leader>fb', function() FzfLua.buffers() end, desc = 'Find buffers'},
    {'<leader>fr', function() FzfLua.oldfiles() end, desc = 'Find recent'},
    {'<leader>fz', function() FzfLua.zoxide() end, desc = 'Find zoxide'},
    {'<leader>fn', function() FzfLua.files({cwd=vim.fn.stdpath('config')}) end, desc = 'Find config'},
    -- Grep
    {'<leader>/', function() FzfLua.live_grep_native() end, desc = 'Live grep'},
    {'<leader>fw', function() FzfLua.grep_cword() end, desc = 'Grep word'},
    {'<leader>fl', function() FzfLua.grep_curbuf() end, desc = 'Grep current buffer'},
    {'<leader>fL', function() FzfLua.lines() end, desc = 'Grep all buffers'},
    {'<leader>fp', function() FzfLua.grep_project() end, desc = 'Grep project'},
    -- Git
    {'<leader>fg', function() FzfLua.git_files() end, desc = 'Find git files'},
    {'<leader>gs', function() FzfLua.git_status() end, desc = 'Find status'},
    {'<leader>gc', function() FzfLua.git_commits() end, desc = 'Find commits'},
    {'<leader>gd', function() FzfLua.git_hunks() end, desc = 'Find diff'},
    {'<leader>gb', function() FzfLua.git_branches() end, desc = 'Find branches'},
    -- Lsp
    {'<leader>fq', function() FzfLua.diagnostics_document() end, desc = 'Find diagnostic'},
    {'<leader>fQ', function() FzfLua.diagnostics_workspace() end, desc = 'Find diagnostic'},
    {'<leader>fc', function() FzfLua.lsp_code_actions() end, desc = 'Find code actions'},
    -- Search
    {'<leader>:', function() FzfLua.command_history() end, desc = 'Find command history'},
    {'<leader>f:', function() FzfLua.commands() end, desc = 'Find command'},
    {'<leader>f<BS>', function() FzfLua.resume() end, desc = 'Resume search'},
    {'<leader>fo', function() FzfLua.nvim_options() end, desc = 'Find options'},
    {'<leader>fk', function() FzfLua.keymaps() end, desc = 'Find keymaps'},
    {'<leader>fa', function() FzfLua.autocmds() end, desc = 'Find autocmds'},
    {'<leader>fh', function() FzfLua.helptags() end, desc = 'Find help'},
    {'<leader>f\'', function() FzfLua.colorschemes() end, desc = 'Find colorscheme'},
    {'<leader>sh', function() FzfLua.search_history() end, desc = 'Search history'},
    {'<leader><space>', function() FzfLua.builtin() end, desc = 'Find builtin'},
  },
  config = function()
    require('fzf-lua').setup({
      "hide",
      winopts = {preview = {hidden = true}},
      oldfiles = {include_current_session = true},
      defaults = {git_icons = false, file_icons = false},
    })
    require('fzf-lua').register_ui_select()
  end
}

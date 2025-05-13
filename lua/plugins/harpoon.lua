return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {'nvim-lua/plenary.nvim'},
  opts = {},
  keys = function()
    local keys = {
      {'<leader>a', function() require('harpoon'):list():add() end, desc = 'Harpoon current file'},
      {'<leader>h', function() local harpoon = require('harpoon') harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = 'Toggle Harpoon menu'},
    }

    for i = 1, 4 do
      table.insert(keys, {
        '<leader>' .. i,
        function()
          require('harpoon'):list():select(i)
        end,
        desc = 'Goto Harpoon ' .. i
      })
    end
    return keys
  end,
}

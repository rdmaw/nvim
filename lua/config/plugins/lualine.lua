return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local lualine = require("lualine")

      local colors = {
        bg = "NONE",
        fg = "#bbc2cf",
        yellow = "#ECBE7B",
        cyan = "#008080",
        darkblue = "#081633",
        green = "#98be65",
        orange = "#FF8800",
        violet = "#a9a1e1",
        magenta = "#c678dd",
        blue = "#51afef",
        red = "#ec5f67",
      }

      local conditions = {
        buffer_not_empty = function()
          return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
        end,
        hide_in_width = function()
          return vim.fn.winwidth(0) > 80
        end,
        check_git_workspace = function()
          local filepath = vim.fn.expand("%:p:h")
          local gitdir = vim.fn.finddir(".git", filepath .. ";")
          return gitdir and #gitdir > 0 and #gitdir < #filepath
        end,
      }

      -- Config
      local config = {
        options = {
          component_separators = "",
          section_separators = "",
          theme = {
            normal = { c = { fg = colors.fg, bg = colors.bg } },
            inactive = { c = { fg = colors.fg, bg = colors.bg } },
          },
        },
        sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_y = {},
          lualine_z = {},
          lualine_c = {},
          lualine_x = {},
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_y = {},
          lualine_z = {},
          lualine_c = {},
          lualine_x = {},
        },
      }

      -- Inserts a component in lualine_c at left section
      local function ins_left(component)
        table.insert(config.sections.lualine_c, component)
      end

      -- Inserts a component in lualine_x at right section
      local function ins_right(component)
        table.insert(config.sections.lualine_x, component)
      end

      -- ins_left({
      -- 	function()
      -- 		return "▊"
      -- 	end,
      -- 	color = { fg = colors.blue }, -- Sets highlighting of component
      -- 	padding = { left = 0, right = 1 }, -- We don't need space before this
      -- })
      --
      -- ins_left({
      -- 	-- mode component
      -- 	function()
      -- 		return ""
      -- 	end,
      -- 	color = function()
      -- 		-- auto change color according to neovims mode
      -- 		local mode_color = {
      -- 			n = colors.red,
      -- 			i = colors.green,
      -- 			v = colors.blue,
      -- 			[""] = colors.blue,
      -- 			V = colors.blue,
      -- 			c = colors.magenta,
      -- 			no = colors.red,
      -- 			s = colors.orange,
      -- 			S = colors.orange,
      -- 			[""] = colors.orange,
      -- 			ic = colors.yellow,
      -- 			R = colors.violet,
      -- 			Rv = colors.violet,
      -- 			cv = colors.red,
      -- 			ce = colors.red,
      -- 			r = colors.cyan,
      -- 			rm = colors.cyan,
      -- 			["r?"] = colors.cyan,
      -- 			["!"] = colors.red,
      -- 			t = colors.red,
      -- 		}
      -- 		return { fg = mode_color[vim.fn.mode()] }
      -- 	end,
      -- 	padding = { right = 1 },
      -- })

      ins_left({
        "branch",
        icon = "",
        color = { fg = colors.violet },
      })

      ins_left({
        "filename",
        cond = conditions.buffer_not_empty,
        color = { fg = colors.cyan, gui = "bold" },
      })

      ins_left({
        "diagnostics",
        sources = { "nvim_diagnostic" },
        symbols = { error = " ", warn = " ", info = " " },
        diagnostics_color = {
          error = { fg = colors.red },
          warn = { fg = colors.yellow },
          info = { fg = colors.cyan },
        },
      })

      ins_left({
        "diff",
        symbols = { added = " ", modified = "󰏬 ", removed = " " },
        diff_color = {
          added = { fg = colors.green },
          modified = { fg = colors.orange },
          removed = { fg = colors.red },
        },
        cond = conditions.hide_in_width,
      })

      -- Insert mid section. You can make any number of sections in neovim :)
      -- for lualine it's any number greater then 2
      ins_left({
        function()
          return "%="
        end,
      })

      ins_left({ "location" })

      ins_left({ "progress", color = { fg = colors.fg, gui = "bold" } })

      ins_right({
        "harpoon2",
        icon = " ",
        indicators = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" },
        active_indicators = {
          "[1]",
          "[2]",
          "[3]",
          "[4]",
          "[5]",
          "[6]",
          "[7]",
          "[8]",
          "[9]",
          "[10]",
        },
        color_active = { fg = "white" },
      })

      ins_right("filetype")

      ins_right({
        function()
          local msg = "No Lsp"
          local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
          local clients = vim.lsp.get_clients()
          if next(clients) == nil then
            return msg
          end
          for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
              return client.name
            end
          end
          return msg
        end,
        icon = " ",
        -- color = { fg = "#ffffff", gui = "bold" },
      })

      lualine.setup(config)
    end,
    -- 	local transparent = require("lualine.themes.auto")
    -- 	transparent.normal.c.bg = "NONE"
    --
    -- 	require("lualine").setup({
    --
    -- 		options = {
    -- 			icons_enabled = true,
    -- 			theme = transparent,
    -- 			component_separators = { left = "", right = "" },
    -- 			section_separators = { left = "", right = "" },
    -- 		},
    -- 		sections = {
    -- 			lualine_a = {},
    -- 			lualine_b = {
    -- 				{ "branch", "diff", "diagnostics" },
    -- 			},
    -- 			lualine_c = {
    -- 				{ "filename" },
    -- 			},
    -- 			lualine_x = {
    -- 				{
    -- 				{ "filetype" },
    -- 			},
    -- 			lualine_y = {},
    -- 			lualine_z = {
    -- 				{},
    -- 			},
    -- 		},
    -- 	})
    -- end,
  },

  {
    "letieu/harpoon-lualine",
    dependencies = {
      {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
      },
    },
  },
}

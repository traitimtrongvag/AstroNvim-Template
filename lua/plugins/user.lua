---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==

  -- customize dashboard options
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.dashboard = opts.dashboard or {}
      opts.dashboard.preset = opts.dashboard.preset or {}
      opts.dashboard.preset.header = [[
⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣦⡀⠀⠀⠀⠀⠀⠀⣠⣾⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⣀⣀⡠⠄
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⠿⣿⣿⣿⣿⣟⠘⠛⠻⠿⣿⣿⣿⣿⣤⣤⣿⠿⠟⠃⠀⠀
⠤⢤⣀⣀⣀⣀⣀⣤⣾⡿⠻⣿⣶⣿⣿⣿⣿⣿⠀⠀⠀⠀⠘⠿⣿⣿⡟⠉⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠉⠉⠛⠻⣿⣿⣤⡀⠛⣿⣿⣿⠿⠟⠃⠀⠀⠀⠀⣀⣴⣾⡿⠂⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣦⣤⣤⣀⣤⣤⣶⣶⣿⣿⡿⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠟⠉⠉⠛⠟⠛⠛⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠃⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⠶⠒⠁⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠀⠀⢀⣴⣿⣿⣿⣿⣿⣷⣶⣤⣤⣶⣾⠟⠛⠉⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⠛⢻⣿⣿⡿⠿⣿⣿⡏⠉⠻⢿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢰⣿⡛⠁⠀⠀⠻⣿⣿⣶⣿⣿⠁⠀⢀⣴⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣦⣤⣀⣀⣀⡉⠉⠉⣀⣠⣴⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⢀⣤⠞⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣴⡿⠛⠉⠉⠙⠿⣿⣿⣿⣿⡿⠟⠋⠀⠀⠀⣠⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣠⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠜⠁⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣦⣶⣶⣶⣾⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⡿⠟⠉⠉⠠⣿⣍⣽⣿⣿⣿⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠒⠒⠿⢿⣿⡟⠁⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⡿⠋⣻⣿⣿⣿⣷⣶⣤⣤⣀⡀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣶⣤⣀⠀⡀⠀⠀⠈⣛⣉⣩⣶⣾⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣿⡿⠿⠿⣿⡿⠿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡏⠀⠀⠀⠀⠀⠀⠀⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢠⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]]
      
      return opts
    end,
    config = function(_, opts)
      require("snacks").setup(opts)
      
      local function set_dashboard_colors()
        local color = "#800020" 
        
        -- Set highlight groups for dashboard components
        vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = color, bold = true })
        vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = color, bold = true })
        vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = color, bold = true })
        vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = color })
        vim.api.nvim_set_hl(0, "SnacksDashboardTitle", { fg = color, bold = true })
        vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = color })
        vim.api.nvim_set_hl(0, "SnacksDashboardSpecial", { fg = color })
      end
      
      -- Apply colors immediately
      set_dashboard_colors()
      
      -- Reapply colors when dashboard is opened
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "snacks_dashboard",
        callback = set_dashboard_colors,
        desc = "Set dashboard colors when opening dashboard",
      })
      
      -- Reapply colors when colorscheme changes
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          -- Add a small delay to ensure colorscheme is fully loaded
          vim.defer_fn(set_dashboard_colors, 100)
        end,
        desc = "Reapply dashboard colors after colorscheme change",
      })
    end,
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts)
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts)
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            :with_pair(cond.not_after_regex "%%")
            :with_pair(cond.not_before_regex("xxx", 3))
            :with_move(cond.none())
            :with_del(cond.not_after_regex "xx")
            :with_cr(cond.none()),
        },
        Rule("a", "a", "-vim")
      )
    end,
  },
}
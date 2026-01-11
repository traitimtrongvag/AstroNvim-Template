-- lua/plugins/astroui.lua
---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    colorscheme = "murphy",

    highlights = {
      init = {
        -- ERROR / DIAGNOSTIC
        DiagnosticError = { fg = "#ff5f5f", bold = true },
        ErrorMsg = { fg = "#ff3b3b", bold = true },
 
        ["@keyword.rust"] = { fg = "#ff9e64", bold = true },
        ["@type.rust"] = { fg = "#7dcfff", bold = true },
        ["@function.rust"] = { fg = "#61afef", bold = true },
        ["@function.call.rust"] = { fg = "#61afef" },
        ["@variable.rust"] = { fg = "#e6edf3" },
        ["@constant.rust"] = { fg = "#d19a66", bold = true },
      },
    },

    -- icons
    icons = {
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
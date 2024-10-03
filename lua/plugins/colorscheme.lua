return {
  {
    "luisiacc/gruvbox-baby",
    lazy = false,
    priority = 1000,
    config = function()
      local colors = require("gruvbox-baby.colors").config()
      vim.g.gruvbox_baby_function_style = "NONE"
      vim.g.gruvbox_baby_keyword_style = "italic"
      vim.g.gruvbox_baby_highlights = {
        ["@text.uri"] = { style = "NONE", fg = colors.light_blue },
        ["@tag.delimiter"] = { style = "NONE", fg = colors.clean_green },
        DiagnosticInfo = { fg = colors.light_blue },
        TelescopeNormal = { fg = colors.light_blue },
        DiagnosticBorder = { fg = colors.light_blue },
        SagaBorder = { fg = colors.light_blue },
        FloatBorder = { fg = colors.light_blue },
        CmpDocumentationBorder = { fg = colors.light_blue },
        NoicePopupBorder = { fg = colors.light_blue },
        NoiceConfirmBorder = { fg = colors.light_blue },
        PmenuSel = { bg = colors.light_blue, fg = colors.dark },
        PmenuThumb = { bg = colors.light_blue, fg = colors.dark },
        TitleString = { fg = colors.light_blue },
        NonText = { fg = colors.medium_gray },
        RainbowDelimiterRed = { fg = colors.red },
        RainbowDelimiterYellow = { fg = colors.soft_yellow },
        RainbowDelimiterBlue = { fg = colors.light_blue },
        RainbowDelimiterOrange = { fg = colors.orange },
        RainbowDelimiterGreen = { fg = colors.soft_green },
        RainbowDelimiterViolet = { fg = colors.pink },
        RainbowDelimiterCyan = { fg = colors.blue_gray },
      }
      --vim.g.gruvbox_baby_telescope_theme = 1
      vim.cmd([[colorscheme gruvbox-baby]])
    end,
  },
  {
    "shaunsingh/nord.nvim",
  },
}

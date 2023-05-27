return {
  {
    "luisiacc/gruvbox-baby",
    lazy = false,
    priority = 1000,
    config = function()
      local colors = require("gruvbox-baby.colors").config()
      vim.g.gruvbox_baby_function_style = "NONE"
      vim.g.gruvbox_baby_keyword_style = "italic"
      vim.g.gruvbox_baby_highlights = { ["@text.uri"] = { style = "NONE", fg = colors.light_blue } }
      --vim.g.gruvbox_baby_telescope_theme = 1
      vim.cmd([[colorscheme gruvbox-baby]])
    end,
  },
  {
    "shaunsingh/nord.nvim",
  },
}

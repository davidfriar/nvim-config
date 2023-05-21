return {
  "luisiacc/gruvbox-baby",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_baby_function_style = "NONE"
    vim.g.gruvbox_baby_keyword_style = "italic"
    vim.g.gruvbox_baby_telescope_theme = 1

    local colors = require("gruvbox-baby.colors").config()
    -- vim.g.gruvbox_baby_highlights = { Search = { bg = colors.soft_yellow } }

    vim.cmd([[colorscheme gruvbox-baby]])
  end,
}

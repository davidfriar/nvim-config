local header = {
  [['##::: ##:'########::'#######::'##::::'##:'####:'##::::'##:]],
  [[ ###:: ##: ##.....::'##.... ##: ##:::: ##:. ##:: ###::'###:]],
  [[ ####: ##: ##::::::: ##:::: ##: ##:::: ##:: ##:: ####'####:]],
  [[ ## ## ##: ######::: ##:::: ##: ##:::: ##:: ##:: ## ### ##:]],
  [[ ##. ####: ##...:::: ##:::: ##:. ##:: ##::: ##:: ##. #: ##:]],
  [[ ##:. ###: ##::::::: ##:::: ##::. ## ##:::: ##:: ##:.:: ##:]],
  [[ ##::. ##: ########:. #######::::. ###::::'####: ##:::: ##:]],
  [[..::::..::........:::.......::::::...:::::....::..:::::..::]],
}

return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local theme = require("alpha.themes.dashboard")
    theme.section.buttons.val = {
      theme.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      theme.button("f", "󰈞  Find files", ":Telescope find_files <CR>"),
      theme.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
      theme.button("q", "  Quit NVIM", ":qa<CR>"),
    }
    theme.section.header.val = header
    require("alpha").setup(theme.config)
  end,
}

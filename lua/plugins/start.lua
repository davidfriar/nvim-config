local header = {
  [[:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::]],
  [[::::::'##::: ##:'########::'#######::'##::::'##:'####:'##::::'##:::::]],
  [[:::::: ###:: ##: ##.....::'##.... ##: ##:::: ##:. ##:: ###::'###:::::]],
  [[:::::: ####: ##: ##::::::: ##:::: ##: ##:::: ##:: ##:: ####'####:::::]],
  [[:::::: ## ## ##: ######::: ##:::: ##: ##:::: ##:: ##:: ## ### ##:::::]],
  [[:::::: ##. ####: ##...:::: ##:::: ##:. ##:: ##::: ##:: ##. #: ##:::::]],
  [[:::::: ##:. ###: ##::::::: ##:::: ##::. ## ##:::: ##:: ##:.:: ##:::::]],
  [[:::::: ##::. ##: ########:. #######::::. ###::::'####: ##:::: ##:::::]],
  [[::::::..::::..::........:::.......::::::...:::::....::..:::::..::::::]],
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

    for _, button in ipairs(theme.section.buttons.val) do
      button.opts.hl = "StorageClass"
      button.opts.hl_shortcut = "Type"
    end

    theme.section.header.val = header
    theme.section.header.opts.hl = "String"
    require("alpha").setup(theme.config)
  end,
}

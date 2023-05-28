local c = require("gruvbox-baby.colors").config()

local M = {
  normal = {
    a = { bg = c.light_blue, fg = c.dark, gui = "bold" },
    b = { bg = c.medium_gray, fg = c.light_blue },
    c = { bg = c.background, fg = c.milk },
  },
  insert = {
    a = { bg = c.bright_yellow, fg = c.dark, gui = "bold" },
    b = { bg = c.medium_gray, fg = c.bright_yellow },
    c = { bg = c.background, fg = c.milk },
  },
  visual = {
    a = { bg = c.milk, fg = c.dark, gui = "bold" },
    b = { bg = c.medium_gray, fg = c.milk },
    c = { bg = c.background, fg = c.milk },
  },
  replace = {
    a = { bg = c.error_red, fg = c.dark, gui = "bold" },
    b = { bg = c.medium_gray, fg = c.error_red },
    c = { bg = c.background, fg = c.milk },
  },
  command = {
    a = { bg = c.soft_green, fg = c.dark, gui = "bold" },
    b = { bg = c.medium_gray, fg = c.soft_green },
    c = { bg = c.background, fg = c.milk },
  },
  inactive = {
    a = { bg = c.medium_gray, fg = c.milk },
    b = { bg = c.background, fg = c.milk },
    c = { bg = c.background, fg = c.milk },
  },
}

M.terminal = M.insert

return M

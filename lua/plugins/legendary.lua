return {
  "mrjones2014/legendary.nvim",
  dependencies = {
    "kkharji/sqlite.lua",
    "stevearc/dressing.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("legendary").setup({
      commands = require("core.commands"),
      select_prompt = "Keybindings and Commands",
      extensions = {
        which_key = {
          auto_register = true,
          do_binding = false,
        },
        nvim_tree = true,
      },
    })
    local keys = require("core.keymaps").global
    require("which-key").add(keys)
  end,
}

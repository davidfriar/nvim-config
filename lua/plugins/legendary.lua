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
      extensions = {
        nvim_tree = true,
      },
      select_prompt = "Keybindings and Commands",
      extensions = {
        which_key = {
          auto_register = true,
          do_binding = false,
        },
      }
    })
    local keys = require("core.keymaps").global
    for m, ks in pairs(keys) do
      require("which-key").register(ks, { mode = m })
    end
  end,
}

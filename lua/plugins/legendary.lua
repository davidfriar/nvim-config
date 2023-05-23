return {
  "mrjones2014/legendary.nvim",
  dependencies = {
    "kkharji/sqlite.lua",
    "stevearc/dressing.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("legendary").setup({
      commands = {
        {
          ":SayHello",
          function()
            print("hello world!")
          end,
          description = "Say hello as a command",
        },
      },
      funcs = {
        {
          description = "Funky function",
          function()
            print("this is funky")
          end,
        },
      },
      extensions = {
        nvim_tree = true,
      },
      select_prompt = "Keybindings, Commands and Functions",
      which_key = {
        auto_register = true,
        do_binding = false,
      },
    })
    local keys = require("core.keymaps").global
    for m, ks in pairs(keys) do
      require("which-key").register(ks, { mode = m })
    end
  end,
}

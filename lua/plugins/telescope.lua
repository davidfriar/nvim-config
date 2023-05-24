return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  cmd = { "Telescope" },
  config = function()
    local telescope = require("telescope")
    telescope.load_extension("fzf")
    telescope.setup({
      -- defaults = {
      --   borderchars = {
      --     prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
      --     results = { " " },
      --     preview = { " " },
      --   },
      -- },
    })
  end,
}

return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "nvim-telescope/telescope-file-browser.nvim" },
    },
    cmd = { "Telescope" },
    config = function()
      local telescope = require("telescope")
      telescope.load_extension("fzf")
      telescope.load_extension("file_browser")
      telescope.setup({})
    end,
  },
  -- {
  --   "nvim-telescope/telescope-file-browser.nvim",
  --   dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  --   cmd = "Telescope file_browser",
  --   -- -- config = function()
  --   --   print("about to load extension")
  --   --   require("telescope").load_extension("file_browser")
  --   -- end,
  -- },
}

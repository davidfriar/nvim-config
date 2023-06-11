return {
  { "tpope/vim-fugitive" },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({})
    end,
  },
  {
    "tpope/vim-rhubarb",
    config = function()
      vim.api.nvim_create_user_command("Browse", "OpenBrowser <args>", { nargs = 1 })
    end,
  },
}

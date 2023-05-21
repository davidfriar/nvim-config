return {
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      show_end_of_line = true,
    },
  },
  { "folke/zen-mode.nvim" },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },
  {
    "ggandor/leap.nvim",
    dependencies = "tpope/vim-repeat",
    config = function()
      require("leap").add_default_mappings(true)
    end,
  },
  { "mbbill/undotree" },
}

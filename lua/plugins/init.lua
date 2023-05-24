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
  {
    "ggandor/flit.nvim",
    dependencies = "ggandor/leap.nvim",
    config = function()
      require("flit").setup({})
    end,
  },
  { "mbbill/undotree" },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
}

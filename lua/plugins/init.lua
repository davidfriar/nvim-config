return {
  {'tpope/vim-fugitive'},
  {
    "lukas-reineke/indent-blankline.nvim",
    opts={
      show_end_of_line = true,
    },
  },
  {"folke/zen-mode.nvim"},
  {
    "numToStr/Comment.nvim",
    config = function()
      require('Comment').setup()
    end
  }
}


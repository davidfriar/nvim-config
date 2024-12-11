return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "│",
      },
    },
  },
  { "folke/zen-mode.nvim" },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
      local ft = require("Comment.ft")
      ft.set("openscad", { "//%s", "/*%s*/" })
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
      require("flit").setup({
        labeled_modes = "nv",
      })
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
  { "nanotee/zoxide.vim" },
  {
    "davidfriar/nvim-nicerlenses",
    config = function()
      require("nicerlenses").setup({})
    end,
  },
  { "christoomey/vim-titlecase" },
  {
    "johmsalas/text-case.nvim",
    config = function()
      require("textcase").setup({})
    end,
  },
  { "tyru/open-browser.vim" },
  { "iamcco/markdown-preview.nvim" },
  {
    "gbprod/substitute.nvim",
    dependencies = "ggandor/leap.nvim",
    config = function()
      require("substitute").setup({})
      -- vim.keymap.set("n", "s", require("substitute").operator, { noremap = true })
      -- vim.keymap.set("n", "ss", require("substitute").line, { noremap = true })
      -- vim.keymap.set("n", "S", require("substitute").eol, { noremap = true })
      -- vim.keymap.set("x", "s", require("substitute").visual, { noremap = true })
    end,
  },
  {
    "echasnovski/mini.ai",
    version = false,
    config = function()
      require("mini.ai").setup({
        custom_textobjects = {
          f = false, -- disable because the one from treestiiter-textobjects works better
        },
      })
    end,
  },
}

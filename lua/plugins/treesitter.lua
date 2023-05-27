return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "RRethy/nvim-treesitter-textsubjects",
  },
  opts = {
    highlight = {
      enable = true,
    },
    -- :help nvim-treesitter-textobjects-modules
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
    },
    textsubjects = {
      enable = true,
      prev_selection = ",", -- (Optional) keymap to select the previous selection
      keymaps = {
        ["."] = "textsubjects-smart",
        [";"] = "textsubjects-container-outer",
        ["i;"] = "textsubjects-container-inner",
      },
    },
    ensure_installed = {
      "javascript",
      "typescript",
      "tsx",
      "lua",
      "css",
      "json",
      "haskell",
      "norg",
      "markdown",
      "markdown_inline",
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
    require("nvim-treesitter.install").compilers = { "gcc-12" }
  end,
}

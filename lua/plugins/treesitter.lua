return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
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

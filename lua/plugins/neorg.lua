return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  lazy = true,
  ft = "norg",
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {
        config = {
          folds = false,
          icon_preset = "diamond",
        },
      },
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            mynotes = "~/notes",
          },
        },
      },
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
    },
  },
  dependencies = { { "nvim-lua/plenary.nvim" } },
}

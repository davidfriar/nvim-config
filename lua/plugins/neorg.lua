return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ['core.concealer'] = {
        config = {
          folds=false,
          icon_preset = 'diamond',
          icons = {
            -- todo = {
            --   enabled = true,
            --   done = {
            --     icon = "",
            --   },
            --   pending = {
            --     icon = "",
            --   },
            --
            --   undone = {
            --     icon = " ",
            --   },
            --
            --   uncertain = {
            --     icon = "",
            --   },
            --
            --   on_hold = {
            --     icon = "",
            --   },
            --
            --   cancelled = {
            --     icon = "",
            --   },
            --   urgent = {
            --     icon = "!",
            --   },
            -- },
          },
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
        }
      },
    },
  },
  dependencies = { { "nvim-lua/plenary.nvim" } },
}

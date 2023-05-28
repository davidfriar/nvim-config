return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  lazy = true,
  ft = "norg",
  config = function()
    require("neorg").setup({
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
        ["core.keybinds"] = {
          config = {
            hook = function(keybinds)
              -- Binds the `gtd` key in `norg` mode to execute `:echo 'Hello'`
              keybinds.map("norg", "n", ",,", "<cmd>Neorg toggle-concealer<CR>")
            end,
          },
        },
      },
    })
  end,
}

return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    presets = {
      -- command_palette = true,
      long_message_to_split = true,
    },
    views = {
      cmdline_popup = {
        position = {
          row = 13,
          col = "50%",
        },
        size = {
          min_width = 60,
          width = "auto",
          height = "auto",
        },
      },
      popupmenu = {
        relative = "editor",
        position = {
          row = 16,
          col = "50%",
        },
        size = {
          width = 60,
          height = "auto",
          max_height = 15,
        },
        border = {
          style = "rounded",
          padding = { 0, 1 },
        },
        win_options = {
          winhighlight = { Normal = "Normal", FloatBorder = "NoiceCmdlinePopupBorder" },
        },
      },
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}

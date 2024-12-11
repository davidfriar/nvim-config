return {
  "folke/which-key.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    local whichKey = require("which-key")
    whichKey.setup({
      -- key_labels = { ["<leader>"] = "SPC" },
      layout = {
        width = { max = 100 },
      },
    })
  end,
}

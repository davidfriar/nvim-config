return {
  "mrcjkb/haskell-tools.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  ft = { "haskell", "cabal" },
  branch = "1.x.x",
  config = function()
    local ht = require("haskell-tools")
    local bufnr = vim.api.nvim_get_current_buf()
    ht.start_or_attach({
      hls = {
        on_attach = require("core.lsp-handler").on_attach({ name = "haskell" }, bufnr),
      },
    })
  end,
}

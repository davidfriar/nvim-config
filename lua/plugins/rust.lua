return {
  {
    "rust-lang/rust.vim",
    config = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    dependencies = { "neovim/nvim-lspconfig", "rust-lang/rust.vim" },
    config = function()
      local rt = require("rust-tools")
      rt.setup({
        server = {
          on_attach = require("core.lsp-handler").on_attach,
        },
      })
    end,
  },
  {
    "saecki/crates.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup({
        completion = {
          cmp = {
            enabled = true,
          },
        },
        null_ls = {
          enabled = true,
          name = "Crates",
        },
        on_attach = function(bufnr)
          local whichKey = require("which-key")
          local keys = require("core.keymaps").crates
          for m, ks in pairs(keys) do
            whichKey.register(ks, { mode = m, buffer = bufnr })
          end
        end,
      })
    end,
  },
}

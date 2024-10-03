return {
  {
    "folke/neodev.nvim",
    config = function()
      require("neodev").setup({})
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      "b0o/schemastore.nvim",
      "jose-elias-alvarez/null-ls.nvim",
      "folke/neodev.nvim",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true
      local signs = {
        { name = "DiagnosticSignError", text = "" },
        { name = "DiagnosticSignWarn", text = "" },
        { name = "DiagnosticSignHint", text = "" },
        { name = "DiagnosticSignInfo", text = "" },
      }
      for _, sign in ipairs(signs) do
        vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
      end
      vim.diagnostic.config({
        severity_sort = true,
      })
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        on_attach = require("core.lsp-handler").on_attach,
        settings = {
          Lua = {
            workspace = {
              checkThirdParty = false,
            },
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = { "vim" },
            },
          },
        },
      })
      lspconfig.html.setup({
        capabilities = capabilities,
        on_attach = require("core.lsp-handler").on_attach,
      })
      lspconfig.volar.setup({
        capabilities = capabilities,
        on_attach = require("core.lsp-handler").on_attach,
      })
      lspconfig.cssls.setup({
        capabilities = capabilities,
        on_attach = require("core.lsp-handler").on_attach,
        settings = {
          css = {
            validate = true,
            lint = {
              unknownAtRules = "ignore",
            },
          },
          scss = {
            validate = true,
            lint = {
              unknownAtRules = "ignore",
            },
          },
          less = {
            validate = true,
            lint = {
              unknownAtRules = "ignore",
            },
          },
        },
      })
      lspconfig.unocss.setup({
        filetypes = { "css" },
        capabilities = capabilities,
        on_attach = require("core.lsp-handler").on_attach,
      })
      lspconfig.clojure_lsp.setup({
        capabilities = capabilities,
        on_attach = require("core.lsp-handler").on_attach,
      })
      lspconfig.racket_langserver.setup({
        capabilities = capabilities,
        on_attach = require("core.lsp-handler").on_attach,
      })
      require("typescript").setup({
        server = {
          capabilities = capabilities,
          on_attach = require("core.lsp-handler").on_attach,
        },
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities,
        on_attach = require("core.lsp-handler").on_attach,

        settings = {
          json = {
            schemas = require("schemastore").json.schemas(),
            validate = { enable = true },
            format = { enable = true },
          },
        },
        lspconfig.emmet_ls.setup({
          -- on_attach = on_attach,
          capabilities = capabilities,
          filetypes = {
            "css",
            "eruby",
            "html",
            "javascript",
            "javascriptreact",
            "less",
            "sass",
            "scss",
            "svelte",
            "pug",
            "typescriptreact",
            "vue",
          },
          init_options = {
            html = {
              options = {
                -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                -- ["bem.enabled"] = true,
              },
            },
          },
        }),
      })

      lspconfig.openscad_lsp.setup({
        capabilities = capabilities,
        on_attach = require("core.lsp-handler").on_attach,
      })

      -- lspconfig.rust_analyzer.setup({
      --   capabilities = capabilities,
      --   on_attach = require("core.lsp-handler").on_attach,
      -- })

      local null_ls = require("null-ls")
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
      null_ls.setup({
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format()
              end,
            })
          end
        end,
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.xmlformat,
          null_ls.builtins.formatting.yamlfmt,
          null_ls.builtins.formatting.fourmolu,
          null_ls.builtins.formatting.cljstyle,
          null_ls.builtins.formatting.raco_fmt,
          null_ls.builtins.formatting.clang_format.with({
            filetypes = { "c", "cpp", "cs", "java", "cuda", "proto", "openscad", "clojure" },
          }),
          null_ls.builtins.diagnostics.eslint.with({
            condition = function(utils)
              return utils.root_has_file({
                ".eslintrc.js",
                ".eslintrc.cjs",
                ".eslintrc.yaml",
                ".eslintrc.yml",
                ".eslintrc.json",
              })
            end,
          }),
        },
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "tsserver", "html", "cssls", "lua_ls", "jsonls", "emmet_ls", "unocss" },
      handlers = {
        jdtls = function() end,
      },
    },
  },
  {
    "nvimdev/lspsaga.nvim",
    branch = "main",
    -- event="LspAttach",
    config = function()
      require("lspsaga").setup({
        -- keybinds for navigation in lspsaga window
        scroll_preview = { scroll_down = "<C-j>", scroll_up = "<C-k>" },
        -- use enter to open file with definition preview
        definition = {
          keys = {
            edit = "<CR>",
          },
        },
        lightbulb = {
          enable = true,
          virtual_text = false,
        },
        symbol_in_winbar = {
          enable = false,
        },
        ui = {
          code_action = "",
          hover = "",
          border = "rounded",
        },
      })
    end,
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      --Please make sure you install markdown and markdown_inline parser
      { "nvim-treesitter/nvim-treesitter" },
    },
  },
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup({})
    end,
  },
  {
    "cseickel/diagnostic-window.nvim",
    dependencies = "MunifTanjim/nui.nvim",
  },
}

return {
  on_attach = function(client, bufnr)
    local whichKey = require("which-key")
    local lspKeys = require("core.keymaps").lsp
    for m, ks in pairs(lspKeys) do
      whichKey.register(ks, { mode = m, buffer = bufnr })
    end
    local clientKeys = require("core.keymaps")[client.name]
    for m, ks in pairs(clientKeys) do
      whichKey.register(ks, { mode = m, buffer = bufnr })
    end
  end,
}

return {
  on_attach = function(client, bufnr)
    local whichKey = require("which-key")
    local keymaps = require("core.keymaps")
    whichKey.add(keymaps.lsp)
    local clientKeys = keymaps[client.name]
    if clientKeys ~= nil then
      whichKey.add(clientKeys)
    end
  end,
}

local options = {
  number=true,
  shiftwidth = 2,
  tabstop = 2,
  expandtab=true,
  termguicolors=true,
  list=true,
  listchars = { tab = '→ ', space = '·', nbsp = '␣', trail='•', eol = '¬' },
  showmode = false,
  laststatus = 0,
  ruler = false,
  cursorline = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

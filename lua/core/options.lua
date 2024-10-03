local options = {
  signcolumn = "yes",
  number = true,
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  termguicolors = true,
  list = true,
  listchars = { tab = "→ ", space = "·", nbsp = "␣", trail = "•", eol = "¬" },
  showmode = false,
  laststatus = 0,
  ruler = false,
  cursorline = true,
  smartindent = true,
  updatetime = 1000,
  undofile = true,
  swapfile = false,
  clipboard = "unnamedplus",
  wrap = false,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.iskeyword:append("-")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.sexp_filetypes = "clojure,scheme,lisp,timl,racket"

vim.api.nvim_create_autocmd("BufEnter", { pattern = "*", command = [[ if &ft ==# 'help' | wincmd L | endif]] })

local function refreshConcealer()
  vim.cmd("Neorg toggle-concealer")
  vim.cmd("Neorg toggle-concealer")
end

vim.api.nvim_create_autocmd("BufEnter", { pattern = "*.norg", callback = refreshConcealer })

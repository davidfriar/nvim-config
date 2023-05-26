vim.api.nvim_create_autocmd("BufEnter", { pattern = "*", command = [[ if &ft ==# 'help' | wincmd L | endif]] })
